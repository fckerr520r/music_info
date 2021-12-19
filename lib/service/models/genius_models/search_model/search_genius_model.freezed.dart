// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_genius_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchGeniusModel _$SearchGeniusModelFromJson(Map<String, dynamic> json) {
  return _SearchGeniusModel.fromJson(json);
}

/// @nodoc
class _$SearchGeniusModelTearOff {
  const _$SearchGeniusModelTearOff();

  _SearchGeniusModel call({required Meta meta, required Response response}) {
    return _SearchGeniusModel(
      meta: meta,
      response: response,
    );
  }

  SearchGeniusModel fromJson(Map<String, Object?> json) {
    return SearchGeniusModel.fromJson(json);
  }
}

/// @nodoc
const $SearchGeniusModel = _$SearchGeniusModelTearOff();

/// @nodoc
mixin _$SearchGeniusModel {
  Meta get meta => throw _privateConstructorUsedError;
  Response get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchGeniusModelCopyWith<SearchGeniusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchGeniusModelCopyWith<$Res> {
  factory $SearchGeniusModelCopyWith(
          SearchGeniusModel value, $Res Function(SearchGeniusModel) then) =
      _$SearchGeniusModelCopyWithImpl<$Res>;
  $Res call({Meta meta, Response response});

  $MetaCopyWith<$Res> get meta;
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$SearchGeniusModelCopyWithImpl<$Res>
    implements $SearchGeniusModelCopyWith<$Res> {
  _$SearchGeniusModelCopyWithImpl(this._value, this._then);

  final SearchGeniusModel _value;
  // ignore: unused_field
  final $Res Function(SearchGeniusModel) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
    ));
  }

  @override
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$SearchGeniusModelCopyWith<$Res>
    implements $SearchGeniusModelCopyWith<$Res> {
  factory _$SearchGeniusModelCopyWith(
          _SearchGeniusModel value, $Res Function(_SearchGeniusModel) then) =
      __$SearchGeniusModelCopyWithImpl<$Res>;
  @override
  $Res call({Meta meta, Response response});

  @override
  $MetaCopyWith<$Res> get meta;
  @override
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$SearchGeniusModelCopyWithImpl<$Res>
    extends _$SearchGeniusModelCopyWithImpl<$Res>
    implements _$SearchGeniusModelCopyWith<$Res> {
  __$SearchGeniusModelCopyWithImpl(
      _SearchGeniusModel _value, $Res Function(_SearchGeniusModel) _then)
      : super(_value, (v) => _then(v as _SearchGeniusModel));

  @override
  _SearchGeniusModel get _value => super._value as _SearchGeniusModel;

  @override
  $Res call({
    Object? meta = freezed,
    Object? response = freezed,
  }) {
    return _then(_SearchGeniusModel(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchGeniusModel implements _SearchGeniusModel {
  const _$_SearchGeniusModel({required this.meta, required this.response});

  factory _$_SearchGeniusModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchGeniusModelFromJson(json);

  @override
  final Meta meta;
  @override
  final Response response;

  @override
  String toString() {
    return 'SearchGeniusModel(meta: $meta, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchGeniusModel &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$SearchGeniusModelCopyWith<_SearchGeniusModel> get copyWith =>
      __$SearchGeniusModelCopyWithImpl<_SearchGeniusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchGeniusModelToJson(this);
  }
}

abstract class _SearchGeniusModel implements SearchGeniusModel {
  const factory _SearchGeniusModel(
      {required Meta meta, required Response response}) = _$_SearchGeniusModel;

  factory _SearchGeniusModel.fromJson(Map<String, dynamic> json) =
      _$_SearchGeniusModel.fromJson;

  @override
  Meta get meta;
  @override
  Response get response;
  @override
  @JsonKey(ignore: true)
  _$SearchGeniusModelCopyWith<_SearchGeniusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
class _$MetaTearOff {
  const _$MetaTearOff();

  _Meta call({required int status}) {
    return _Meta(
      status: status,
    );
  }

  Meta fromJson(Map<String, Object?> json) {
    return Meta.fromJson(json);
  }
}

/// @nodoc
const $Meta = _$MetaTearOff();

/// @nodoc
mixin _$Meta {
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res>;
  $Res call({int status});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res> implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  final Meta _value;
  // ignore: unused_field
  final $Res Function(Meta) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) then) =
      __$MetaCopyWithImpl<$Res>;
  @override
  $Res call({int status});
}

/// @nodoc
class __$MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(_Meta _value, $Res Function(_Meta) _then)
      : super(_value, (v) => _then(v as _Meta));

  @override
  _Meta get _value => super._value as _Meta;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_Meta(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Meta implements _Meta {
  const _$_Meta({required this.status});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  final int status;

  @override
  String toString() {
    return 'Meta(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meta &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$MetaCopyWith<_Meta> get copyWith =>
      __$MetaCopyWithImpl<_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(this);
  }
}

abstract class _Meta implements Meta {
  const factory _Meta({required int status}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$MetaCopyWith<_Meta> get copyWith => throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
class _$ResponseTearOff {
  const _$ResponseTearOff();

  _Response call({List<Hit>? hits}) {
    return _Response(
      hits: hits,
    );
  }

  Response fromJson(Map<String, Object?> json) {
    return Response.fromJson(json);
  }
}

/// @nodoc
const $Response = _$ResponseTearOff();

/// @nodoc
mixin _$Response {
  List<Hit>? get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
  $Res call({List<Hit>? hits});
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;

  @override
  $Res call({
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Hit>?,
    ));
  }
}

/// @nodoc
abstract class _$ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) then) =
      __$ResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Hit>? hits});
}

/// @nodoc
class __$ResponseCopyWithImpl<$Res> extends _$ResponseCopyWithImpl<$Res>
    implements _$ResponseCopyWith<$Res> {
  __$ResponseCopyWithImpl(_Response _value, $Res Function(_Response) _then)
      : super(_value, (v) => _then(v as _Response));

  @override
  _Response get _value => super._value as _Response;

  @override
  $Res call({
    Object? hits = freezed,
  }) {
    return _then(_Response(
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Hit>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Response implements _Response {
  const _$_Response({this.hits});

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final List<Hit>? hits;

  @override
  String toString() {
    return 'Response(hits: $hits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Response &&
            const DeepCollectionEquality().equals(other.hits, hits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hits));

  @JsonKey(ignore: true)
  @override
  _$ResponseCopyWith<_Response> get copyWith =>
      __$ResponseCopyWithImpl<_Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseToJson(this);
  }
}

abstract class _Response implements Response {
  const factory _Response({List<Hit>? hits}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  List<Hit>? get hits;
  @override
  @JsonKey(ignore: true)
  _$ResponseCopyWith<_Response> get copyWith =>
      throw _privateConstructorUsedError;
}

Hit _$HitFromJson(Map<String, dynamic> json) {
  return _Hit.fromJson(json);
}

/// @nodoc
class _$HitTearOff {
  const _$HitTearOff();

  _Hit call(
      {required String index, required String type, required Result result}) {
    return _Hit(
      index: index,
      type: type,
      result: result,
    );
  }

  Hit fromJson(Map<String, Object?> json) {
    return Hit.fromJson(json);
  }
}

/// @nodoc
const $Hit = _$HitTearOff();

/// @nodoc
mixin _$Hit {
  String get index => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Result get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitCopyWith<Hit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitCopyWith<$Res> {
  factory $HitCopyWith(Hit value, $Res Function(Hit) then) =
      _$HitCopyWithImpl<$Res>;
  $Res call({String index, String type, Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$HitCopyWithImpl<$Res> implements $HitCopyWith<$Res> {
  _$HitCopyWithImpl(this._value, this._then);

  final Hit _value;
  // ignore: unused_field
  final $Res Function(Hit) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? type = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }

  @override
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$HitCopyWith<$Res> implements $HitCopyWith<$Res> {
  factory _$HitCopyWith(_Hit value, $Res Function(_Hit) then) =
      __$HitCopyWithImpl<$Res>;
  @override
  $Res call({String index, String type, Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$HitCopyWithImpl<$Res> extends _$HitCopyWithImpl<$Res>
    implements _$HitCopyWith<$Res> {
  __$HitCopyWithImpl(_Hit _value, $Res Function(_Hit) _then)
      : super(_value, (v) => _then(v as _Hit));

  @override
  _Hit get _value => super._value as _Hit;

  @override
  $Res call({
    Object? index = freezed,
    Object? type = freezed,
    Object? result = freezed,
  }) {
    return _then(_Hit(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Hit implements _Hit {
  const _$_Hit({required this.index, required this.type, required this.result});

  factory _$_Hit.fromJson(Map<String, dynamic> json) => _$$_HitFromJson(json);

  @override
  final String index;
  @override
  final String type;
  @override
  final Result result;

  @override
  String toString() {
    return 'Hit(index: $index, type: $type, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Hit &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$HitCopyWith<_Hit> get copyWith =>
      __$HitCopyWithImpl<_Hit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HitToJson(this);
  }
}

abstract class _Hit implements Hit {
  const factory _Hit(
      {required String index,
      required String type,
      required Result result}) = _$_Hit;

  factory _Hit.fromJson(Map<String, dynamic> json) = _$_Hit.fromJson;

  @override
  String get index;
  @override
  String get type;
  @override
  Result get result;
  @override
  @JsonKey(ignore: true)
  _$HitCopyWith<_Hit> get copyWith => throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Result call(
      {@JsonKey(name: 'api_path')
          String apiPath = '',
      @JsonKey(name: 'full_title')
          String fullTitle = '',
      @JsonKey(name: 'header_image_thumbnail_url')
          String headerImageThumbnailUrl = '',
      @JsonKey(name: 'header_image_url')
          String headerImageUrl = '',
      required int id,
      @JsonKey(name: 'lyrics_state')
          String lyricsState = '',
      @JsonKey(name: 'song_art_image_thumbnail_url')
          String songArtImageThumbnailUrl = '',
      @JsonKey(name: 'song_art_image_url')
          String songArtImageUrl = '',
      String title = '',
      @JsonKey(name: 'title_with_featured')
          String titleWithFeatured = '',
      String url = '',
      @JsonKey(name: 'primary_artist')
          ArtistMainInfo primaryArtist = const ArtistMainInfo()}) {
    return _Result(
      apiPath: apiPath,
      fullTitle: fullTitle,
      headerImageThumbnailUrl: headerImageThumbnailUrl,
      headerImageUrl: headerImageUrl,
      id: id,
      lyricsState: lyricsState,
      songArtImageThumbnailUrl: songArtImageThumbnailUrl,
      songArtImageUrl: songArtImageUrl,
      title: title,
      titleWithFeatured: titleWithFeatured,
      url: url,
      primaryArtist: primaryArtist,
    );
  }

  Result fromJson(Map<String, Object?> json) {
    return Result.fromJson(json);
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  @JsonKey(name: 'api_path')
  String get apiPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_title')
  String get fullTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'header_image_thumbnail_url')
  String get headerImageThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'header_image_url')
  String get headerImageUrl => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'lyrics_state')
  String get lyricsState => throw _privateConstructorUsedError;
  @JsonKey(name: 'song_art_image_thumbnail_url')
  String get songArtImageThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'song_art_image_url')
  String get songArtImageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_with_featured')
  String get titleWithFeatured => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_artist')
  ArtistMainInfo get primaryArtist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'api_path')
          String apiPath,
      @JsonKey(name: 'full_title')
          String fullTitle,
      @JsonKey(name: 'header_image_thumbnail_url')
          String headerImageThumbnailUrl,
      @JsonKey(name: 'header_image_url')
          String headerImageUrl,
      int id,
      @JsonKey(name: 'lyrics_state')
          String lyricsState,
      @JsonKey(name: 'song_art_image_thumbnail_url')
          String songArtImageThumbnailUrl,
      @JsonKey(name: 'song_art_image_url')
          String songArtImageUrl,
      String title,
      @JsonKey(name: 'title_with_featured')
          String titleWithFeatured,
      String url,
      @JsonKey(name: 'primary_artist')
          ArtistMainInfo primaryArtist});

  $ArtistMainInfoCopyWith<$Res> get primaryArtist;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? fullTitle = freezed,
    Object? headerImageThumbnailUrl = freezed,
    Object? headerImageUrl = freezed,
    Object? id = freezed,
    Object? lyricsState = freezed,
    Object? songArtImageThumbnailUrl = freezed,
    Object? songArtImageUrl = freezed,
    Object? title = freezed,
    Object? titleWithFeatured = freezed,
    Object? url = freezed,
    Object? primaryArtist = freezed,
  }) {
    return _then(_value.copyWith(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String,
      headerImageThumbnailUrl: headerImageThumbnailUrl == freezed
          ? _value.headerImageThumbnailUrl
          : headerImageThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      headerImageUrl: headerImageUrl == freezed
          ? _value.headerImageUrl
          : headerImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lyricsState: lyricsState == freezed
          ? _value.lyricsState
          : lyricsState // ignore: cast_nullable_to_non_nullable
              as String,
      songArtImageThumbnailUrl: songArtImageThumbnailUrl == freezed
          ? _value.songArtImageThumbnailUrl
          : songArtImageThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      songArtImageUrl: songArtImageUrl == freezed
          ? _value.songArtImageUrl
          : songArtImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleWithFeatured: titleWithFeatured == freezed
          ? _value.titleWithFeatured
          : titleWithFeatured // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      primaryArtist: primaryArtist == freezed
          ? _value.primaryArtist
          : primaryArtist // ignore: cast_nullable_to_non_nullable
              as ArtistMainInfo,
    ));
  }

  @override
  $ArtistMainInfoCopyWith<$Res> get primaryArtist {
    return $ArtistMainInfoCopyWith<$Res>(_value.primaryArtist, (value) {
      return _then(_value.copyWith(primaryArtist: value));
    });
  }
}

/// @nodoc
abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'api_path')
          String apiPath,
      @JsonKey(name: 'full_title')
          String fullTitle,
      @JsonKey(name: 'header_image_thumbnail_url')
          String headerImageThumbnailUrl,
      @JsonKey(name: 'header_image_url')
          String headerImageUrl,
      int id,
      @JsonKey(name: 'lyrics_state')
          String lyricsState,
      @JsonKey(name: 'song_art_image_thumbnail_url')
          String songArtImageThumbnailUrl,
      @JsonKey(name: 'song_art_image_url')
          String songArtImageUrl,
      String title,
      @JsonKey(name: 'title_with_featured')
          String titleWithFeatured,
      String url,
      @JsonKey(name: 'primary_artist')
          ArtistMainInfo primaryArtist});

  @override
  $ArtistMainInfoCopyWith<$Res> get primaryArtist;
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? fullTitle = freezed,
    Object? headerImageThumbnailUrl = freezed,
    Object? headerImageUrl = freezed,
    Object? id = freezed,
    Object? lyricsState = freezed,
    Object? songArtImageThumbnailUrl = freezed,
    Object? songArtImageUrl = freezed,
    Object? title = freezed,
    Object? titleWithFeatured = freezed,
    Object? url = freezed,
    Object? primaryArtist = freezed,
  }) {
    return _then(_Result(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String,
      headerImageThumbnailUrl: headerImageThumbnailUrl == freezed
          ? _value.headerImageThumbnailUrl
          : headerImageThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      headerImageUrl: headerImageUrl == freezed
          ? _value.headerImageUrl
          : headerImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lyricsState: lyricsState == freezed
          ? _value.lyricsState
          : lyricsState // ignore: cast_nullable_to_non_nullable
              as String,
      songArtImageThumbnailUrl: songArtImageThumbnailUrl == freezed
          ? _value.songArtImageThumbnailUrl
          : songArtImageThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      songArtImageUrl: songArtImageUrl == freezed
          ? _value.songArtImageUrl
          : songArtImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleWithFeatured: titleWithFeatured == freezed
          ? _value.titleWithFeatured
          : titleWithFeatured // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      primaryArtist: primaryArtist == freezed
          ? _value.primaryArtist
          : primaryArtist // ignore: cast_nullable_to_non_nullable
              as ArtistMainInfo,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Result implements _Result {
  const _$_Result(
      {@JsonKey(name: 'api_path')
          this.apiPath = '',
      @JsonKey(name: 'full_title')
          this.fullTitle = '',
      @JsonKey(name: 'header_image_thumbnail_url')
          this.headerImageThumbnailUrl = '',
      @JsonKey(name: 'header_image_url')
          this.headerImageUrl = '',
      required this.id,
      @JsonKey(name: 'lyrics_state')
          this.lyricsState = '',
      @JsonKey(name: 'song_art_image_thumbnail_url')
          this.songArtImageThumbnailUrl = '',
      @JsonKey(name: 'song_art_image_url')
          this.songArtImageUrl = '',
      this.title = '',
      @JsonKey(name: 'title_with_featured')
          this.titleWithFeatured = '',
      this.url = '',
      @JsonKey(name: 'primary_artist')
          this.primaryArtist = const ArtistMainInfo()});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  @JsonKey(name: 'api_path')
  final String apiPath;
  @override
  @JsonKey(name: 'full_title')
  final String fullTitle;
  @override
  @JsonKey(name: 'header_image_thumbnail_url')
  final String headerImageThumbnailUrl;
  @override
  @JsonKey(name: 'header_image_url')
  final String headerImageUrl;
  @override
  final int id;
  @override
  @JsonKey(name: 'lyrics_state')
  final String lyricsState;
  @override
  @JsonKey(name: 'song_art_image_thumbnail_url')
  final String songArtImageThumbnailUrl;
  @override
  @JsonKey(name: 'song_art_image_url')
  final String songArtImageUrl;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @override
  @JsonKey(name: 'title_with_featured')
  final String titleWithFeatured;
  @JsonKey(defaultValue: '')
  @override
  final String url;
  @override
  @JsonKey(name: 'primary_artist')
  final ArtistMainInfo primaryArtist;

  @override
  String toString() {
    return 'Result(apiPath: $apiPath, fullTitle: $fullTitle, headerImageThumbnailUrl: $headerImageThumbnailUrl, headerImageUrl: $headerImageUrl, id: $id, lyricsState: $lyricsState, songArtImageThumbnailUrl: $songArtImageThumbnailUrl, songArtImageUrl: $songArtImageUrl, title: $title, titleWithFeatured: $titleWithFeatured, url: $url, primaryArtist: $primaryArtist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Result &&
            const DeepCollectionEquality().equals(other.apiPath, apiPath) &&
            const DeepCollectionEquality().equals(other.fullTitle, fullTitle) &&
            const DeepCollectionEquality().equals(
                other.headerImageThumbnailUrl, headerImageThumbnailUrl) &&
            const DeepCollectionEquality()
                .equals(other.headerImageUrl, headerImageUrl) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.lyricsState, lyricsState) &&
            const DeepCollectionEquality().equals(
                other.songArtImageThumbnailUrl, songArtImageThumbnailUrl) &&
            const DeepCollectionEquality()
                .equals(other.songArtImageUrl, songArtImageUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.titleWithFeatured, titleWithFeatured) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.primaryArtist, primaryArtist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(apiPath),
      const DeepCollectionEquality().hash(fullTitle),
      const DeepCollectionEquality().hash(headerImageThumbnailUrl),
      const DeepCollectionEquality().hash(headerImageUrl),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(lyricsState),
      const DeepCollectionEquality().hash(songArtImageThumbnailUrl),
      const DeepCollectionEquality().hash(songArtImageUrl),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(titleWithFeatured),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(primaryArtist));

  @JsonKey(ignore: true)
  @override
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {@JsonKey(name: 'api_path')
          String apiPath,
      @JsonKey(name: 'full_title')
          String fullTitle,
      @JsonKey(name: 'header_image_thumbnail_url')
          String headerImageThumbnailUrl,
      @JsonKey(name: 'header_image_url')
          String headerImageUrl,
      required int id,
      @JsonKey(name: 'lyrics_state')
          String lyricsState,
      @JsonKey(name: 'song_art_image_thumbnail_url')
          String songArtImageThumbnailUrl,
      @JsonKey(name: 'song_art_image_url')
          String songArtImageUrl,
      String title,
      @JsonKey(name: 'title_with_featured')
          String titleWithFeatured,
      String url,
      @JsonKey(name: 'primary_artist')
          ArtistMainInfo primaryArtist}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  @JsonKey(name: 'api_path')
  String get apiPath;
  @override
  @JsonKey(name: 'full_title')
  String get fullTitle;
  @override
  @JsonKey(name: 'header_image_thumbnail_url')
  String get headerImageThumbnailUrl;
  @override
  @JsonKey(name: 'header_image_url')
  String get headerImageUrl;
  @override
  int get id;
  @override
  @JsonKey(name: 'lyrics_state')
  String get lyricsState;
  @override
  @JsonKey(name: 'song_art_image_thumbnail_url')
  String get songArtImageThumbnailUrl;
  @override
  @JsonKey(name: 'song_art_image_url')
  String get songArtImageUrl;
  @override
  String get title;
  @override
  @JsonKey(name: 'title_with_featured')
  String get titleWithFeatured;
  @override
  String get url;
  @override
  @JsonKey(name: 'primary_artist')
  ArtistMainInfo get primaryArtist;
  @override
  @JsonKey(ignore: true)
  _$ResultCopyWith<_Result> get copyWith => throw _privateConstructorUsedError;
}

ArtistMainInfo _$ArtistMainInfoFromJson(Map<String, dynamic> json) {
  return _ArtistMainInfo.fromJson(json);
}

/// @nodoc
class _$ArtistMainInfoTearOff {
  const _$ArtistMainInfoTearOff();

  _ArtistMainInfo call(
      {@JsonKey(name: 'api_path') String apiPath = '',
      @JsonKey(name: 'header_image_url') String headerImageUrl = '',
      int id = 0,
      @JsonKey(name: 'image_url') String imageUrl = '',
      String name = '',
      String url = ''}) {
    return _ArtistMainInfo(
      apiPath: apiPath,
      headerImageUrl: headerImageUrl,
      id: id,
      imageUrl: imageUrl,
      name: name,
      url: url,
    );
  }

  ArtistMainInfo fromJson(Map<String, Object?> json) {
    return ArtistMainInfo.fromJson(json);
  }
}

/// @nodoc
const $ArtistMainInfo = _$ArtistMainInfoTearOff();

/// @nodoc
mixin _$ArtistMainInfo {
  @JsonKey(name: 'api_path')
  String get apiPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'header_image_url')
  String get headerImageUrl => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistMainInfoCopyWith<ArtistMainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistMainInfoCopyWith<$Res> {
  factory $ArtistMainInfoCopyWith(
          ArtistMainInfo value, $Res Function(ArtistMainInfo) then) =
      _$ArtistMainInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'header_image_url') String headerImageUrl,
      int id,
      @JsonKey(name: 'image_url') String imageUrl,
      String name,
      String url});
}

/// @nodoc
class _$ArtistMainInfoCopyWithImpl<$Res>
    implements $ArtistMainInfoCopyWith<$Res> {
  _$ArtistMainInfoCopyWithImpl(this._value, this._then);

  final ArtistMainInfo _value;
  // ignore: unused_field
  final $Res Function(ArtistMainInfo) _then;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? headerImageUrl = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      headerImageUrl: headerImageUrl == freezed
          ? _value.headerImageUrl
          : headerImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtistMainInfoCopyWith<$Res>
    implements $ArtistMainInfoCopyWith<$Res> {
  factory _$ArtistMainInfoCopyWith(
          _ArtistMainInfo value, $Res Function(_ArtistMainInfo) then) =
      __$ArtistMainInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'header_image_url') String headerImageUrl,
      int id,
      @JsonKey(name: 'image_url') String imageUrl,
      String name,
      String url});
}

/// @nodoc
class __$ArtistMainInfoCopyWithImpl<$Res>
    extends _$ArtistMainInfoCopyWithImpl<$Res>
    implements _$ArtistMainInfoCopyWith<$Res> {
  __$ArtistMainInfoCopyWithImpl(
      _ArtistMainInfo _value, $Res Function(_ArtistMainInfo) _then)
      : super(_value, (v) => _then(v as _ArtistMainInfo));

  @override
  _ArtistMainInfo get _value => super._value as _ArtistMainInfo;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? headerImageUrl = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_ArtistMainInfo(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      headerImageUrl: headerImageUrl == freezed
          ? _value.headerImageUrl
          : headerImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistMainInfo implements _ArtistMainInfo {
  const _$_ArtistMainInfo(
      {@JsonKey(name: 'api_path') this.apiPath = '',
      @JsonKey(name: 'header_image_url') this.headerImageUrl = '',
      this.id = 0,
      @JsonKey(name: 'image_url') this.imageUrl = '',
      this.name = '',
      this.url = ''});

  factory _$_ArtistMainInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistMainInfoFromJson(json);

  @override
  @JsonKey(name: 'api_path')
  final String apiPath;
  @override
  @JsonKey(name: 'header_image_url')
  final String headerImageUrl;
  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String url;

  @override
  String toString() {
    return 'ArtistMainInfo(apiPath: $apiPath, headerImageUrl: $headerImageUrl, id: $id, imageUrl: $imageUrl, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistMainInfo &&
            const DeepCollectionEquality().equals(other.apiPath, apiPath) &&
            const DeepCollectionEquality()
                .equals(other.headerImageUrl, headerImageUrl) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(apiPath),
      const DeepCollectionEquality().hash(headerImageUrl),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$ArtistMainInfoCopyWith<_ArtistMainInfo> get copyWith =>
      __$ArtistMainInfoCopyWithImpl<_ArtistMainInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistMainInfoToJson(this);
  }
}

abstract class _ArtistMainInfo implements ArtistMainInfo {
  const factory _ArtistMainInfo(
      {@JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'header_image_url') String headerImageUrl,
      int id,
      @JsonKey(name: 'image_url') String imageUrl,
      String name,
      String url}) = _$_ArtistMainInfo;

  factory _ArtistMainInfo.fromJson(Map<String, dynamic> json) =
      _$_ArtistMainInfo.fromJson;

  @override
  @JsonKey(name: 'api_path')
  String get apiPath;
  @override
  @JsonKey(name: 'header_image_url')
  String get headerImageUrl;
  @override
  int get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$ArtistMainInfoCopyWith<_ArtistMainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
