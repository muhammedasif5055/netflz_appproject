import 'package:dartz/dartz.dart';
import 'package:netflz_appproject/domin/core/failier/mainFailier.dart';
import 'package:netflz_appproject/domin/search/model/search_response/search_response.dart';

abstract class SearchService {
  Future<Either<MainFailier, SearchResponse>> searchMovies({
    required String movieQuery,
  });
}
