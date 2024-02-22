// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_resp.freezed.dart';
part 'search_resp.g.dart';

@freezed
class SearchResp with _$SearchResp {
  const factory SearchResp(
          {@JsonKey(name: 'results') required List<SearchResultData> results}) =
      _SearchResp;

  factory SearchResp.fromJson(Map<String, dynamic> json) =>
      _$SearchRespFromJson(json);
}

@freezed
class SearchResultData with _$SearchResultData {
  const factory SearchResultData({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'original_title') required String? originalTitle,
    @JsonKey(name: 'poster_path') required String? posterPath,
  }) = _SearchResultData;

  factory SearchResultData.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDataFromJson(json);
}
