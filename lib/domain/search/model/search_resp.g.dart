// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRespImpl _$$SearchRespImplFromJson(Map<String, dynamic> json) =>
    _$SearchRespImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => SearchResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchRespImplToJson(_$SearchRespImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$SearchResultDataImpl _$$SearchResultDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultDataImpl(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$SearchResultDataImplToJson(
        _$SearchResultDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
