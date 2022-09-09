part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String statId,
    required List<HotandNewData> pastYearMovieList,
    required List<HotandNewData> trndingMovesList,
    required List<HotandNewData> tenseMovieList,
    required List<HotandNewData> southIndianMovieList,
    required List<HotandNewData> trendingTvList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;
  factory HomeState.initial() => const HomeState(
        statId: '0',
        pastYearMovieList: [],
        trndingMovesList: [],
        tenseMovieList: [],
        southIndianMovieList: [],
        trendingTvList: [],
        isLoading: false,
        hasError: false,
      );
}
