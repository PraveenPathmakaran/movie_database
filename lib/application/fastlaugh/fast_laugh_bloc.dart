import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_db/domain/downloads/i_downloads_repo.dart';

import '../../domain/downloads/model/downloads.dart';

part 'fast_laugh_bloc.freezed.dart';
part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';

final List<String> videoUrl = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  final IDownloadsRepo _downloadsRepo;
  FastLaughBloc(this._downloadsRepo) : super(FastLaughState.initial()) {
    on<_Initialize>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await _downloadsRepo.getDownloadsImages();

      result.fold(
          (failure) => emit(state.copyWith(isLoading: false, isError: true)),
          (sucess) =>
              emit(state.copyWith(isLoading: false, videosList: sucess)));
    });
  }
}
