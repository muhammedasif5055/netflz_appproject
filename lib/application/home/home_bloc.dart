import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:netflz_appproject/domin/hotandnew/hotand_new/hotand_new.dart';
import 'package:netflz_appproject/domin/hotandnew/model/hotandnewservises.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewServises _homeservice;

  HomeBloc(this._homeservice) : super(HomeState.initial()) {

    on<GetHomeScreenData>((event, emit) async {
      log('Getting Home data');
      emit(state.copyWith(isLoading: true, hasError: false));
      final _movieResult = await _homeservice.getHotandNewMovieData();
      final _tvResult = await _homeservice.getHotandNewTvData();

    final _state1 =  _movieResult.fold((MainFailier failier) {
        return  HomeState(
          statId: DateTime.now().millisecondsSinceEpoch.toString() ,
          pastYearMovieList: [],
          trndingMovesList: [],
          tenseMovieList: [],
          southIndianMovieList: [],
          trendingTvList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotandNew resp) {
        final pastYear = resp.results;
        final trending = resp.results;
        final drama = resp.results;
        final southIndian = resp.results;
        pastYear.shuffle();
        trending.shuffle();
        drama.shuffle();
        southIndian.shuffle();

        return HomeState(
          statId: DateTime.now().millisecondsSinceEpoch.toString() ,
          pastYearMovieList: pastYear,
          trndingMovesList: trending,
          tenseMovieList: drama,
          southIndianMovieList: southIndian,
          trendingTvList: state.trendingTvList,
          isLoading: false,
          hasError: false, 
        );
      });
      emit(_state1);

     final _state2 = _tvResult.fold((MainFailier failier) {
       return  HomeState(
          statId: DateTime.now().millisecondsSinceEpoch.toString() ,
          pastYearMovieList: [],
          trndingMovesList: [],
          tenseMovieList: [],
          southIndianMovieList: [],
          trendingTvList: [],
          isLoading: false,
          hasError: true,
        );
     }, 
     
     (HotandNew resp) {
         final top10List = resp.results;
         return HomeState(
          statId: DateTime.now().millisecondsSinceEpoch.toString() ,
          pastYearMovieList:state.pastYearMovieList,
          trndingMovesList: top10List,
          tenseMovieList: state.tenseMovieList,
          southIndianMovieList: state.southIndianMovieList,
          trendingTvList: top10List,
          isLoading: false,
          hasError: false,
        );

     });
     emit(_state2);
    });
  }
}
