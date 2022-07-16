import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflz_appproject/application/search/search_bloc.dart';
import 'package:netflz_appproject/domin/downlods/i_download_resp.dart';

import '../../domin/downlods/modeal/downlods.dart';

part 'fast_lafe_event.dart';
part 'fast_lafe_state.dart';
part 'fast_lafe_bloc.freezed.dart';

final dummyvideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
];
ValueNotifier<Set<int>> likedVideosIdsNotifer = ValueNotifier({});

@injectable
class FastLafeBloc extends Bloc<FastLafeEvent, FastLafeState> {
  FastLafeBloc(
    IDownloadsRepo _downloadService,
  ) : super(FastLafeState.initial()) {
    on<Initialize>((event, emit) async {
      emit(
        FastLafeState(
          videosList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result = await _downloadService.getDownloadimage();
      final _state = _result.fold(
          (l) => FastLafeState(
                videosList: [],
                isLoading: false,
                isError: true,
              ),
          (resp) => FastLafeState(
                videosList: resp,
                isLoading: false,
                isError: false,
              ));

      emit(_state);
    });
    on<Likevideo>((event, emit) async {
      likedVideosIdsNotifer.value.add(event.id);
    });
    on<Unlikevideo>((event, emit) async {
      likedVideosIdsNotifer.value.remove(event.id);
    });
  }
}
