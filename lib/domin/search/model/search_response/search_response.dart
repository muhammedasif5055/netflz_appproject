import 'package:json_annotation/json_annotation.dart';
import 'package:netflz_appproject/core/colors/constance.dart';
part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  List<Searchresultdata> results;

  SearchResponse({
    this.results = const [],
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}

@JsonSerializable()
class Searchresultdata {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  String get posterImageUrl => '$imageAppendUrl$posterPath';

  Searchresultdata({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory Searchresultdata.fromJson(Map<String, dynamic> json) {
    return _$SearchresultdataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchresultdataToJson(this);
}
