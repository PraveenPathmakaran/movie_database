import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_db/domain/core/failures/main_failures.dart';
import 'package:movie_db/domain/downloads/i_downloads_repo.dart';

import '../../domain/downloads/model/downloads.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _iDownloadsRepo;
  DownloadsBloc(this._iDownloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(isLoading: true, downloadsFailureSuccessOption: none()),
      );
      final downloadsFailureOrsuccess =
          await _iDownloadsRepo.getDownloadsImages();

      emit(downloadsFailureOrsuccess.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureSuccessOption: some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureSuccessOption: some(Right(success)))));
    });
  }
}
