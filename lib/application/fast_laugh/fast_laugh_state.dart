part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloads> imageList,
    required bool isLoading,
    required bool isError,
  }) = _FastLaughState;
  factory FastLaughState.initial() =>
      const FastLaughState(imageList: [], isLoading: false, isError: false);
}
