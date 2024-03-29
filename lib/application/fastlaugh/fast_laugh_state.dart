part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloads> videosList,
    required List<int> likedVideoIds,
    required bool isLoading,
    required bool isError,
  }) = _FastLaughState;

  factory FastLaughState.initial() => const FastLaughState(
        videosList: [],
        isLoading: false,
        isError: false,
        likedVideoIds: [],
      );
}
