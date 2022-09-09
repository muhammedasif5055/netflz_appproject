import 'package:netflz_appproject/core/strecherbaceurl.dart';
import 'package:netflz_appproject/infrastructure/key.dart';

class ApiEndPoints {
  static const downloads = "$baseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$baseUrl/search/movie?api_key=$apiKey";
  static const hotandnewmovie ="$baseUrl/discover/movie?api_key=$apiKey";
  static const hotandnewTvs ="$baseUrl/discover/tv?api_key=$apiKey";

}
