part of 'downloads_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
    required List<Downloads> downloads,
    required Option<Either<MainFailier, List<Downloads>>>
        downloadFailureOrSucessOption,
  }) = _DownloadState;

  factory DownloadState.inital() {
    return const DownloadState(
        isLoading: false, downloads: [], downloadFailureOrSucessOption: None());
  }
}
