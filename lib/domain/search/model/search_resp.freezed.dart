// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResp _$SearchRespFromJson(Map<String, dynamic> json) {
  return _SearchResp.fromJson(json);
}

/// @nodoc
mixin _$SearchResp {
  @JsonKey(name: 'results')
  List<SearchResultData> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRespCopyWith<SearchResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRespCopyWith<$Res> {
  factory $SearchRespCopyWith(
          SearchResp value, $Res Function(SearchResp) then) =
      _$SearchRespCopyWithImpl<$Res, SearchResp>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<SearchResultData> results});
}

/// @nodoc
class _$SearchRespCopyWithImpl<$Res, $Val extends SearchResp>
    implements $SearchRespCopyWith<$Res> {
  _$SearchRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRespImplCopyWith<$Res>
    implements $SearchRespCopyWith<$Res> {
  factory _$$SearchRespImplCopyWith(
          _$SearchRespImpl value, $Res Function(_$SearchRespImpl) then) =
      __$$SearchRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<SearchResultData> results});
}

/// @nodoc
class __$$SearchRespImplCopyWithImpl<$Res>
    extends _$SearchRespCopyWithImpl<$Res, _$SearchRespImpl>
    implements _$$SearchRespImplCopyWith<$Res> {
  __$$SearchRespImplCopyWithImpl(
      _$SearchRespImpl _value, $Res Function(_$SearchRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$SearchRespImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRespImpl implements _SearchResp {
  const _$SearchRespImpl(
      {@JsonKey(name: 'results') required final List<SearchResultData> results})
      : _results = results;

  factory _$SearchRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRespImplFromJson(json);

  final List<SearchResultData> _results;
  @override
  @JsonKey(name: 'results')
  List<SearchResultData> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchResp(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRespImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRespImplCopyWith<_$SearchRespImpl> get copyWith =>
      __$$SearchRespImplCopyWithImpl<_$SearchRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRespImplToJson(
      this,
    );
  }
}

abstract class _SearchResp implements SearchResp {
  const factory _SearchResp(
      {@JsonKey(name: 'results')
      required final List<SearchResultData> results}) = _$SearchRespImpl;

  factory _SearchResp.fromJson(Map<String, dynamic> json) =
      _$SearchRespImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<SearchResultData> get results;
  @override
  @JsonKey(ignore: true)
  _$$SearchRespImplCopyWith<_$SearchRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) {
  return _SearchResultData.fromJson(json);
}

/// @nodoc
mixin _$SearchResultData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultDataCopyWith<SearchResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultDataCopyWith<$Res> {
  factory $SearchResultDataCopyWith(
          SearchResultData value, $Res Function(SearchResultData) then) =
      _$SearchResultDataCopyWithImpl<$Res, SearchResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class _$SearchResultDataCopyWithImpl<$Res, $Val extends SearchResultData>
    implements $SearchResultDataCopyWith<$Res> {
  _$SearchResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultDataImplCopyWith<$Res>
    implements $SearchResultDataCopyWith<$Res> {
  factory _$$SearchResultDataImplCopyWith(_$SearchResultDataImpl value,
          $Res Function(_$SearchResultDataImpl) then) =
      __$$SearchResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class __$$SearchResultDataImplCopyWithImpl<$Res>
    extends _$SearchResultDataCopyWithImpl<$Res, _$SearchResultDataImpl>
    implements _$$SearchResultDataImplCopyWith<$Res> {
  __$$SearchResultDataImplCopyWithImpl(_$SearchResultDataImpl _value,
      $Res Function(_$SearchResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_$SearchResultDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultDataImpl implements _SearchResultData {
  const _$SearchResultDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'original_title') required this.originalTitle,
      @JsonKey(name: 'poster_path') required this.posterPath});

  factory _$SearchResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @override
  String toString() {
    return 'SearchResultData(id: $id, originalTitle: $originalTitle, posterPath: $posterPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, originalTitle, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultDataImplCopyWith<_$SearchResultDataImpl> get copyWith =>
      __$$SearchResultDataImplCopyWithImpl<_$SearchResultDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultDataImplToJson(
      this,
    );
  }
}

abstract class _SearchResultData implements SearchResultData {
  const factory _SearchResultData(
          {@JsonKey(name: 'id') required final int? id,
          @JsonKey(name: 'original_title') required final String? originalTitle,
          @JsonKey(name: 'poster_path') required final String? posterPath}) =
      _$SearchResultDataImpl;

  factory _SearchResultData.fromJson(Map<String, dynamic> json) =
      _$SearchResultDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultDataImplCopyWith<_$SearchResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
