import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflz_appproject/domin/search/model/search_response/search_response.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:dartz/dartz.dart';
import 'package:netflz_appproject/domin/search/search_sevice.dart';

import '../../domin/api_end_point.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailier, SearchResponse>> searchMovies(
      {required String movieQuery}) async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.search, queryParameters: {'query': movieQuery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailier.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailier.clientFailure());
    }
  }
}
