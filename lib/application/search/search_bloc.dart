import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_db/domain/downloads/i_downloads_repo.dart';
import 'package:movie_db/domain/search/search_service.dart';

import '../../domain/downloads/model/downloads.dart';
import '../../domain/search/model/search_resp.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadServie;
  final SearchService _searchService;
  SearchBloc(this._downloadServie, this._searchService)
      : super(SearchState.initial()) {
    on<_Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        return;
      }
      emit(state.copyWith(isLoading: true));
      final result = await _downloadServie.getDownloadsImages();
      result.fold(
          (failure) => emit(state.copyWith(isLoading: false, isError: true)),
          (success) => emit(state.copyWith(
                isLoading: false,
                isError: false,
                idleList: success,
              )));
    });
    on<_SearchMovie>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await _searchService.searchMovie(movieQuery: event.movieQuery);
      result.fold(
          (failure) => emit(state.copyWith(isLoading: false, isError: true)),
          (success) => emit(state.copyWith(
                isLoading: false,
                isError: false,
                searchResultData: success.results,
              )));
    });
  }
}
