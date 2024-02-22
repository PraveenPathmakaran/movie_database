part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState(
      {required bool isLoading,
      required List<Downloads> downloads,
      required Option<Either<MainFailures, List<Downloads>>>
          downloadsFailureSuccessOption}) = _DownloadsState;

  factory DownloadsState.initial() => DownloadsState(
      isLoading: false, downloads: [], downloadsFailureSuccessOption: none());
}
