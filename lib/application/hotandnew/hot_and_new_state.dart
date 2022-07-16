part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required List<HotandNewData> comingSoonList,
    required List<HotandNewData> everyoneWachingList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HotAndNewState.Initial() => const HotAndNewState(
        comingSoonList: [],
        everyoneWachingList: [],
        isLoading: false,
        hasError: false,
      );
}
