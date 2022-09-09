import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:netflz_appproject/domin/downlods/i_download_resp.dart';

import '../../domin/downlods/modeal/downlods.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadState.inital()) {
    on<_GetDownloadimage>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        downloadFailureOrSucessOption: none(),
      ));
      final Either<MainFailier, List<Downloads>> downloadOption =
          await _downloadsRepo.getDownloadimage();
      log(downloadOption.toString());
      emit(
        downloadOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadFailureOrSucessOption: some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadFailureOrSucessOption: some(right(success))),
        ),
      );
    });
  }
}
