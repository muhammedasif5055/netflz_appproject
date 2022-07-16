part of 'fast_lafe_bloc.dart';

@freezed
class FastLafeState with _$FastLafeState {
  const factory FastLafeState({
    required List<Downloads> videosList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory FastLafeState.initial() => const FastLafeState(
        videosList: [],
        isLoading: true,
        isError: false,
      );
}
