import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:netflz_appproject/domin/hotandnew/model/hotandnewservises.dart';

import '../../domin/hotandnew/hotand_new/hotand_new.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewServises _hotAndNewServises;
  HotAndNewBloc(this._hotAndNewServises) : super(HotAndNewState.Initial()) {
    on<LoadDatainComingSoon>((event, emit) async {
      emit(
        const HotAndNewState(
          comingSoonList: [],
          everyoneWachingList: [],
          isLoading: true,
          hasError: false,
        ),
      );

      final  _result = await _hotAndNewServises.getHotandNewMovieData();
      final newState = _result.fold(
        (MainFailier failier) {
          return const HotAndNewState(
            comingSoonList: [],
            everyoneWachingList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotandNew resp) {
           return  HotAndNewState(
            comingSoonList: resp.results,
            everyoneWachingList: state.everyoneWachingList,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(newState);
    });

    on<LoadDatainEveryoneWaching>((event, emit) {});
  }
}
