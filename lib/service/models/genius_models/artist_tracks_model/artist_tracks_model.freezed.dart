// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_tracks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistTracksModel _$ArtistTracksModelFromJson(Map<String, dynamic> json) {
  return _ArtistTracksModel.fromJson(json);
}

/// @nodoc
class _$ArtistTracksModelTearOff {
  const _$ArtistTracksModelTearOff();

  _ArtistTracksModel call({required Meta meta, required Response response}) {
    return _ArtistTracksModel(
      meta: meta,
      response: response,
    );
  }

  ArtistTracksModel fromJson(Map<String, Object?> json) {
    return ArtistTracksModel.fromJson(json);
  }
}

/// @nodoc
const $ArtistTracksModel = _$ArtistTracksModelTearOff();

/// @nodoc
mixin _$ArtistTracksModel {
  Meta get meta => throw _privateConstructorUsedError;
  Response get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistTracksModelCopyWith<ArtistTracksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistTracksModelCopyWith<$Res> {
  factory $ArtistTracksModelCopyWith(
          ArtistTracksModel value, $Res Function(ArtistTracksModel) then) =
      _$ArtistTracksModelCopyWithImpl<$Res>;
  $Res call({Meta meta, Response response});

  $MetaCopyWith<$Res> get meta;
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$ArtistTracksModelCopyWithImpl<$Res>
    implements $ArtistTracksModelCopyWith<$Res> {
  _$ArtistTracksModelCopyWithImpl(this._value, this._then);

  final ArtistTracksModel _value;
  // ignore: unused_field
  final $Res Function(ArtistTracksModel) _then;

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
abstract class _$ArtistTracksModelCopyWith<$Res>
    implements $ArtistTracksModelCopyWith<$Res> {
  factory _$ArtistTracksModelCopyWith(
          _ArtistTracksModel value, $Res Function(_ArtistTracksModel) then) =
      __$ArtistTracksModelCopyWithImpl<$Res>;
  @override
  $Res call({Meta meta, Response response});

  @override
  $MetaCopyWith<$Res> get meta;
  @override
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$ArtistTracksModelCopyWithImpl<$Res>
    extends _$ArtistTracksModelCopyWithImpl<$Res>
    implements _$ArtistTracksModelCopyWith<$Res> {
  __$ArtistTracksModelCopyWithImpl(
      _ArtistTracksModel _value, $Res Function(_ArtistTracksModel) _then)
      : super(_value, (v) => _then(v as _ArtistTracksModel));

  @override
  _ArtistTracksModel get _value => super._value as _ArtistTracksModel;

  @override
  $Res call({
    Object? meta = freezed,
    Object? response = freezed,
  }) {
    return _then(_ArtistTracksModel(
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
class _$_ArtistTracksModel implements _ArtistTracksModel {
  const _$_ArtistTracksModel({required this.meta, required this.response});

  factory _$_ArtistTracksModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistTracksModelFromJson(json);

  @override
  final Meta meta;
  @override
  final Response response;

  @override
  String toString() {
    return 'ArtistTracksModel(meta: $meta, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistTracksModel &&
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
  _$ArtistTracksModelCopyWith<_ArtistTracksModel> get copyWith =>
      __$ArtistTracksModelCopyWithImpl<_ArtistTracksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistTracksModelToJson(this);
  }
}

abstract class _ArtistTracksModel implements ArtistTracksModel {
  const factory _ArtistTracksModel(
      {required Meta meta, required Response response}) = _$_ArtistTracksModel;

  factory _ArtistTracksModel.fromJson(Map<String, dynamic> json) =
      _$_ArtistTracksModel.fromJson;

  @override
  Meta get meta;
  @override
  Response get response;
  @override
  @JsonKey(ignore: true)
  _$ArtistTracksModelCopyWith<_ArtistTracksModel> get copyWith =>
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

  _Response call({List<SongA>? songs}) {
    return _Response(
      songs: songs,
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
  List<SongA>? get songs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
  $Res call({List<SongA>? songs});
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  final Response _value;
  // ignore: unused_field
  final $Res Function(Response) _then;

  @override
  $Res call({
    Object? songs = freezed,
  }) {
    return _then(_value.copyWith(
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongA>?,
    ));
  }
}

/// @nodoc
abstract class _$ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$ResponseCopyWith(_Response value, $Res Function(_Response) then) =
      __$ResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<SongA>? songs});
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
    Object? songs = freezed,
  }) {
    return _then(_Response(
      songs: songs == freezed
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongA>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Response implements _Response {
  const _$_Response({this.songs});

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final List<SongA>? songs;

  @override
  String toString() {
    return 'Response(songs: $songs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Response &&
            const DeepCollectionEquality().equals(other.songs, songs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(songs));

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
  const factory _Response({List<SongA>? songs}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  List<SongA>? get songs;
  @override
  @JsonKey(ignore: true)
  _$ResponseCopyWith<_Response> get copyWith =>
      throw _privateConstructorUsedError;
}

SongA _$SongAFromJson(Map<String, dynamic> json) {
  return _SongA.fromJson(json);
}

/// @nodoc
class _$SongATearOff {
  const _$SongATearOff();

  _SongA call(
      {@JsonKey(name: 'api_path')
          String? apiPath,
      @JsonKey(name: 'full_title')
          String? fullTitle,
      int id = 0,
      @JsonKey(name: 'song_art_image_url')
          required String songArtImageUrl,
      required String title,
      String? url,
      @JsonKey(name: 'primary_artist')
          PrimaryArtist primaryArtist = const PrimaryArtist()}) {
    return _SongA(
      apiPath: apiPath,
      fullTitle: fullTitle,
      id: id,
      songArtImageUrl: songArtImageUrl,
      title: title,
      url: url,
      primaryArtist: primaryArtist,
    );
  }

  SongA fromJson(Map<String, Object?> json) {
    return SongA.fromJson(json);
  }
}

/// @nodoc
const $SongA = _$SongATearOff();

/// @nodoc
mixin _$SongA {
  @JsonKey(name: 'api_path')
  String? get apiPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_title')
  String? get fullTitle => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'song_art_image_url')
  String get songArtImageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_artist')
  PrimaryArtist get primaryArtist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongACopyWith<SongA> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongACopyWith<$Res> {
  factory $SongACopyWith(SongA value, $Res Function(SongA) then) =
      _$SongACopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'api_path') String? apiPath,
      @JsonKey(name: 'full_title') String? fullTitle,
      int id,
      @JsonKey(name: 'song_art_image_url') String songArtImageUrl,
      String title,
      String? url,
      @JsonKey(name: 'primary_artist') PrimaryArtist primaryArtist});

  $PrimaryArtistCopyWith<$Res> get primaryArtist;
}

/// @nodoc
class _$SongACopyWithImpl<$Res> implements $SongACopyWith<$Res> {
  _$SongACopyWithImpl(this._value, this._then);

  final SongA _value;
  // ignore: unused_field
  final $Res Function(SongA) _then;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? fullTitle = freezed,
    Object? id = freezed,
    Object? songArtImageUrl = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? primaryArtist = freezed,
  }) {
    return _then(_value.copyWith(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String?,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      songArtImageUrl: songArtImageUrl == freezed
          ? _value.songArtImageUrl
          : songArtImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryArtist: primaryArtist == freezed
          ? _value.primaryArtist
          : primaryArtist // ignore: cast_nullable_to_non_nullable
              as PrimaryArtist,
    ));
  }

  @override
  $PrimaryArtistCopyWith<$Res> get primaryArtist {
    return $PrimaryArtistCopyWith<$Res>(_value.primaryArtist, (value) {
      return _then(_value.copyWith(primaryArtist: value));
    });
  }
}

/// @nodoc
abstract class _$SongACopyWith<$Res> implements $SongACopyWith<$Res> {
  factory _$SongACopyWith(_SongA value, $Res Function(_SongA) then) =
      __$SongACopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'api_path') String? apiPath,
      @JsonKey(name: 'full_title') String? fullTitle,
      int id,
      @JsonKey(name: 'song_art_image_url') String songArtImageUrl,
      String title,
      String? url,
      @JsonKey(name: 'primary_artist') PrimaryArtist primaryArtist});

  @override
  $PrimaryArtistCopyWith<$Res> get primaryArtist;
}

/// @nodoc
class __$SongACopyWithImpl<$Res> extends _$SongACopyWithImpl<$Res>
    implements _$SongACopyWith<$Res> {
  __$SongACopyWithImpl(_SongA _value, $Res Function(_SongA) _then)
      : super(_value, (v) => _then(v as _SongA));

  @override
  _SongA get _value => super._value as _SongA;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? fullTitle = freezed,
    Object? id = freezed,
    Object? songArtImageUrl = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? primaryArtist = freezed,
  }) {
    return _then(_SongA(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String?,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      songArtImageUrl: songArtImageUrl == freezed
          ? _value.songArtImageUrl
          : songArtImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryArtist: primaryArtist == freezed
          ? _value.primaryArtist
          : primaryArtist // ignore: cast_nullable_to_non_nullable
              as PrimaryArtist,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SongA implements _SongA {
  const _$_SongA(
      {@JsonKey(name: 'api_path')
          this.apiPath,
      @JsonKey(name: 'full_title')
          this.fullTitle,
      this.id = 0,
      @JsonKey(name: 'song_art_image_url')
          required this.songArtImageUrl,
      required this.title,
      this.url,
      @JsonKey(name: 'primary_artist')
          this.primaryArtist = const PrimaryArtist()});

  factory _$_SongA.fromJson(Map<String, dynamic> json) =>
      _$$_SongAFromJson(json);

  @override
  @JsonKey(name: 'api_path')
  final String? apiPath;
  @override
  @JsonKey(name: 'full_title')
  final String? fullTitle;
  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @override
  @JsonKey(name: 'song_art_image_url')
  final String songArtImageUrl;
  @override
  final String title;
  @override
  final String? url;
  @override
  @JsonKey(name: 'primary_artist')
  final PrimaryArtist primaryArtist;

  @override
  String toString() {
    return 'SongA(apiPath: $apiPath, fullTitle: $fullTitle, id: $id, songArtImageUrl: $songArtImageUrl, title: $title, url: $url, primaryArtist: $primaryArtist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SongA &&
            const DeepCollectionEquality().equals(other.apiPath, apiPath) &&
            const DeepCollectionEquality().equals(other.fullTitle, fullTitle) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.songArtImageUrl, songArtImageUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.primaryArtist, primaryArtist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(apiPath),
      const DeepCollectionEquality().hash(fullTitle),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(songArtImageUrl),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(primaryArtist));

  @JsonKey(ignore: true)
  @override
  _$SongACopyWith<_SongA> get copyWith =>
      __$SongACopyWithImpl<_SongA>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SongAToJson(this);
  }
}

abstract class _SongA implements SongA {
  const factory _SongA(
      {@JsonKey(name: 'api_path') String? apiPath,
      @JsonKey(name: 'full_title') String? fullTitle,
      int id,
      @JsonKey(name: 'song_art_image_url') required String songArtImageUrl,
      required String title,
      String? url,
      @JsonKey(name: 'primary_artist') PrimaryArtist primaryArtist}) = _$_SongA;

  factory _SongA.fromJson(Map<String, dynamic> json) = _$_SongA.fromJson;

  @override
  @JsonKey(name: 'api_path')
  String? get apiPath;
  @override
  @JsonKey(name: 'full_title')
  String? get fullTitle;
  @override
  int get id;
  @override
  @JsonKey(name: 'song_art_image_url')
  String get songArtImageUrl;
  @override
  String get title;
  @override
  String? get url;
  @override
  @JsonKey(name: 'primary_artist')
  PrimaryArtist get primaryArtist;
  @override
  @JsonKey(ignore: true)
  _$SongACopyWith<_SongA> get copyWith => throw _privateConstructorUsedError;
}

PrimaryArtist _$PrimaryArtistFromJson(Map<String, dynamic> json) {
  return _PrimaryArtist.fromJson(json);
}

/// @nodoc
class _$PrimaryArtistTearOff {
  const _$PrimaryArtistTearOff();

  _PrimaryArtist call(
      {@JsonKey(name: 'api_path') String apiPath = '',
      int id = 0,
      @JsonKey(name: 'image_url') String? imageUrl,
      String name = '',
      String? url}) {
    return _PrimaryArtist(
      apiPath: apiPath,
      id: id,
      imageUrl: imageUrl,
      name: name,
      url: url,
    );
  }

  PrimaryArtist fromJson(Map<String, Object?> json) {
    return PrimaryArtist.fromJson(json);
  }
}

/// @nodoc
const $PrimaryArtist = _$PrimaryArtistTearOff();

/// @nodoc
mixin _$PrimaryArtist {
  @JsonKey(name: 'api_path')
  String get apiPath => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrimaryArtistCopyWith<PrimaryArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryArtistCopyWith<$Res> {
  factory $PrimaryArtistCopyWith(
          PrimaryArtist value, $Res Function(PrimaryArtist) then) =
      _$PrimaryArtistCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'api_path') String apiPath,
      int id,
      @JsonKey(name: 'image_url') String? imageUrl,
      String name,
      String? url});
}

/// @nodoc
class _$PrimaryArtistCopyWithImpl<$Res>
    implements $PrimaryArtistCopyWith<$Res> {
  _$PrimaryArtistCopyWithImpl(this._value, this._then);

  final PrimaryArtist _value;
  // ignore: unused_field
  final $Res Function(PrimaryArtist) _then;

  @override
  $Res call({
    Object? apiPath = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PrimaryArtistCopyWith<$Res>
    implements $PrimaryArtistCopyWith<$Res> {
  factory _$PrimaryArtistCopyWith(
          _PrimaryArtist value, $Res Function(_PrimaryArtist) then) =
      __$PrimaryArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'api_path') String apiPath,
      int id,
      @JsonKey(name: 'image_url') String? imageUrl,
      String name,
      String? url});
}

/// @nodoc
class __$PrimaryArtistCopyWithImpl<$Res>
    extends _$PrimaryArtistCopyWithImpl<$Res>
    implements _$PrimaryArtistCopyWith<$Res> {
  __$PrimaryArtistCopyWithImpl(
      _PrimaryArtist _value, $Res Function(_PrimaryArtist) _then)
      : super(_value, (v) => _then(v as _PrimaryArtist));

  @override
  _PrimaryArtist get _value => super._value as _PrimaryArtist;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_PrimaryArtist(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PrimaryArtist implements _PrimaryArtist {
  const _$_PrimaryArtist(
      {@JsonKey(name: 'api_path') this.apiPath = '',
      this.id = 0,
      @JsonKey(name: 'image_url') this.imageUrl,
      this.name = '',
      this.url});

  factory _$_PrimaryArtist.fromJson(Map<String, dynamic> json) =>
      _$$_PrimaryArtistFromJson(json);

  @override
  @JsonKey(name: 'api_path')
  final String apiPath;
  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @override
  final String? url;

  @override
  String toString() {
    return 'PrimaryArtist(apiPath: $apiPath, id: $id, imageUrl: $imageUrl, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrimaryArtist &&
            const DeepCollectionEquality().equals(other.apiPath, apiPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(apiPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$PrimaryArtistCopyWith<_PrimaryArtist> get copyWith =>
      __$PrimaryArtistCopyWithImpl<_PrimaryArtist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrimaryArtistToJson(this);
  }
}

abstract class _PrimaryArtist implements PrimaryArtist {
  const factory _PrimaryArtist(
      {@JsonKey(name: 'api_path') String apiPath,
      int id,
      @JsonKey(name: 'image_url') String? imageUrl,
      String name,
      String? url}) = _$_PrimaryArtist;

  factory _PrimaryArtist.fromJson(Map<String, dynamic> json) =
      _$_PrimaryArtist.fromJson;

  @override
  @JsonKey(name: 'api_path')
  String get apiPath;
  @override
  int get id;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  String get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$PrimaryArtistCopyWith<_PrimaryArtist> get copyWith =>
      throw _privateConstructorUsedError;
}
