part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<Searchresultdata> serachResultList,
    required List<Downloads> idleList,
    required bool isLoading,
    required bool isError,
  }) = _searchState;

  factory SearchState.inital() => const SearchState(
        serachResultList: [],
        idleList: [],
        isLoading: false,
        isError: false,
      );
}
