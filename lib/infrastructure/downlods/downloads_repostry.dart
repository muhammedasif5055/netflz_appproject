import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflz_appproject/domin/api_end_point.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:dartz/dartz.dart';
import 'package:netflz_appproject/domin/downlods/i_download_resp.dart';
import 'package:netflz_appproject/domin/downlods/modeal/downlods.dart';
import 'package:netflz_appproject/pressentation/downloads/widgets/screen_downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailier, List<Downloads>>> getDownloadimage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloadsurl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(MainFailier.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailier.clientFailure());
    }
  }
}
