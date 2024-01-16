part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState(
      {required bool isLoading,
      List<Downloads>? downloads,
      required Option<Either<MainFailure, List<Downloads>>>
          failureOrSuccessOption}) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
        isLoading: false, failureOrSuccessOption: None());
  }
}
