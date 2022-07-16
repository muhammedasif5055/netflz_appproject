import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:netflz_appproject/domin/downlods/i_download_resp.dart';
import 'package:netflz_appproject/domin/search/search_sevice.dart';

import '../../domin/downlods/modeal/downlods.dart';
import '../../domin/search/model/search_response/search_response.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsService;
  final SearchService _searchService;
  SearchBloc(this._downloadsService, this._searchService)
      : super(SearchState.inital()) {
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          serachResultList: [],
          idleList: state.idleList,
          isLoading: false,
          isError: false,
        ));
        return;
      }

      emit(const SearchState(
        serachResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));

      final _result = await _downloadsService.getDownloadimage();
      final _state = _result.fold((MainFailier f) {
        return const SearchState(
          serachResultList: [],
          idleList: [],
          isLoading: false,
          isError: true,
        );
      }, (List<Downloads> list) {
        return SearchState(
          serachResultList: [],
          idleList: list,
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
    });

    on<SearchMovie>((event, emit) async {
      emit(const SearchState(
        serachResultList: [],
        idleList: [],
        isLoading: true,
        isError: false,
      ));
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      final _state = _result.fold(
        (MainFailier f) {
          return const SearchState(
            serachResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchResponse r) {
          return SearchState(
            serachResultList: r.results,
            idleList: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(_state);
    });
  }
}
