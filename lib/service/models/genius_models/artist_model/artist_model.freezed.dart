// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistModel _$ArtistModelFromJson(Map<String, dynamic> json) {
  return _ArtistModel.fromJson(json);
}

/// @nodoc
class _$ArtistModelTearOff {
  const _$ArtistModelTearOff();

  _ArtistModel call({required Meta meta, required ResponseArtist response}) {
    return _ArtistModel(
      meta: meta,
      response: response,
    );
  }

  ArtistModel fromJson(Map<String, Object?> json) {
    return ArtistModel.fromJson(json);
  }
}

/// @nodoc
const $ArtistModel = _$ArtistModelTearOff();

/// @nodoc
mixin _$ArtistModel {
  Meta get meta => throw _privateConstructorUsedError;
  ResponseArtist get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistModelCopyWith<ArtistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistModelCopyWith<$Res> {
  factory $ArtistModelCopyWith(
          ArtistModel value, $Res Function(ArtistModel) then) =
      _$ArtistModelCopyWithImpl<$Res>;
  $Res call({Meta meta, ResponseArtist response});

  $MetaCopyWith<$Res> get meta;
  $ResponseArtistCopyWith<$Res> get response;
}

/// @nodoc
class _$ArtistModelCopyWithImpl<$Res> implements $ArtistModelCopyWith<$Res> {
  _$ArtistModelCopyWithImpl(this._value, this._then);

  final ArtistModel _value;
  // ignore: unused_field
  final $Res Function(ArtistModel) _then;

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
              as ResponseArtist,
    ));
  }

  @override
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  $ResponseArtistCopyWith<$Res> get response {
    return $ResponseArtistCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$ArtistModelCopyWith<$Res>
    implements $ArtistModelCopyWith<$Res> {
  factory _$ArtistModelCopyWith(
          _ArtistModel value, $Res Function(_ArtistModel) then) =
      __$ArtistModelCopyWithImpl<$Res>;
  @override
  $Res call({Meta meta, ResponseArtist response});

  @override
  $MetaCopyWith<$Res> get meta;
  @override
  $ResponseArtistCopyWith<$Res> get response;
}

/// @nodoc
class __$ArtistModelCopyWithImpl<$Res> extends _$ArtistModelCopyWithImpl<$Res>
    implements _$ArtistModelCopyWith<$Res> {
  __$ArtistModelCopyWithImpl(
      _ArtistModel _value, $Res Function(_ArtistModel) _then)
      : super(_value, (v) => _then(v as _ArtistModel));

  @override
  _ArtistModel get _value => super._value as _ArtistModel;

  @override
  $Res call({
    Object? meta = freezed,
    Object? response = freezed,
  }) {
    return _then(_ArtistModel(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseArtist,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ArtistModel implements _ArtistModel {
  const _$_ArtistModel({required this.meta, required this.response});

  factory _$_ArtistModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistModelFromJson(json);

  @override
  final Meta meta;
  @override
  final ResponseArtist response;

  @override
  String toString() {
    return 'ArtistModel(meta: $meta, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistModel &&
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
  _$ArtistModelCopyWith<_ArtistModel> get copyWith =>
      __$ArtistModelCopyWithImpl<_ArtistModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistModelToJson(this);
  }
}

abstract class _ArtistModel implements ArtistModel {
  const factory _ArtistModel(
      {required Meta meta, required ResponseArtist response}) = _$_ArtistModel;

  factory _ArtistModel.fromJson(Map<String, dynamic> json) =
      _$_ArtistModel.fromJson;

  @override
  Meta get meta;
  @override
  ResponseArtist get response;
  @override
  @JsonKey(ignore: true)
  _$ArtistModelCopyWith<_ArtistModel> get copyWith =>
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

ResponseArtist _$ResponseArtistFromJson(Map<String, dynamic> json) {
  return _ResponseArtist.fromJson(json);
}

/// @nodoc
class _$ResponseArtistTearOff {
  const _$ResponseArtistTearOff();

  _ResponseArtist call({required ArtistFullInfo artist}) {
    return _ResponseArtist(
      artist: artist,
    );
  }

  ResponseArtist fromJson(Map<String, Object?> json) {
    return ResponseArtist.fromJson(json);
  }
}

/// @nodoc
const $ResponseArtist = _$ResponseArtistTearOff();

/// @nodoc
mixin _$ResponseArtist {
  ArtistFullInfo get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseArtistCopyWith<ResponseArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseArtistCopyWith<$Res> {
  factory $ResponseArtistCopyWith(
          ResponseArtist value, $Res Function(ResponseArtist) then) =
      _$ResponseArtistCopyWithImpl<$Res>;
  $Res call({ArtistFullInfo artist});

  $ArtistFullInfoCopyWith<$Res> get artist;
}

/// @nodoc
class _$ResponseArtistCopyWithImpl<$Res>
    implements $ResponseArtistCopyWith<$Res> {
  _$ResponseArtistCopyWithImpl(this._value, this._then);

  final ResponseArtist _value;
  // ignore: unused_field
  final $Res Function(ResponseArtist) _then;

  @override
  $Res call({
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistFullInfo,
    ));
  }

  @override
  $ArtistFullInfoCopyWith<$Res> get artist {
    return $ArtistFullInfoCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseArtistCopyWith<$Res>
    implements $ResponseArtistCopyWith<$Res> {
  factory _$ResponseArtistCopyWith(
          _ResponseArtist value, $Res Function(_ResponseArtist) then) =
      __$ResponseArtistCopyWithImpl<$Res>;
  @override
  $Res call({ArtistFullInfo artist});

  @override
  $ArtistFullInfoCopyWith<$Res> get artist;
}

/// @nodoc
class __$ResponseArtistCopyWithImpl<$Res>
    extends _$ResponseArtistCopyWithImpl<$Res>
    implements _$ResponseArtistCopyWith<$Res> {
  __$ResponseArtistCopyWithImpl(
      _ResponseArtist _value, $Res Function(_ResponseArtist) _then)
      : super(_value, (v) => _then(v as _ResponseArtist));

  @override
  _ResponseArtist get _value => super._value as _ResponseArtist;

  @override
  $Res call({
    Object? artist = freezed,
  }) {
    return _then(_ResponseArtist(
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistFullInfo,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ResponseArtist implements _ResponseArtist {
  const _$_ResponseArtist({required this.artist});

  factory _$_ResponseArtist.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseArtistFromJson(json);

  @override
  final ArtistFullInfo artist;

  @override
  String toString() {
    return 'ResponseArtist(artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseArtist &&
            const DeepCollectionEquality().equals(other.artist, artist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(artist));

  @JsonKey(ignore: true)
  @override
  _$ResponseArtistCopyWith<_ResponseArtist> get copyWith =>
      __$ResponseArtistCopyWithImpl<_ResponseArtist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseArtistToJson(this);
  }
}

abstract class _ResponseArtist implements ResponseArtist {
  const factory _ResponseArtist({required ArtistFullInfo artist}) =
      _$_ResponseArtist;

  factory _ResponseArtist.fromJson(Map<String, dynamic> json) =
      _$_ResponseArtist.fromJson;

  @override
  ArtistFullInfo get artist;
  @override
  @JsonKey(ignore: true)
  _$ResponseArtistCopyWith<_ResponseArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistFullInfo _$ArtistFullInfoFromJson(Map<String, dynamic> json) {
  return _ArtistFullInfo.fromJson(json);
}

/// @nodoc
class _$ArtistFullInfoTearOff {
  const _$ArtistFullInfoTearOff();

  _ArtistFullInfo call(
      {@JsonKey(name: 'alternate_names') List<String> alternateNames = const [],
      @JsonKey(name: 'api_path') String apiPath = '',
      @JsonKey(name: 'facebook_name') String facebookName = '',
      @JsonKey(name: 'header_image_url') String headerImageUrl = '',
      required int id,
      @JsonKey(name: 'image_url') String imageUrl = '',
      @JsonKey(name: 'instagram_name') String instagramName = '',
      required String name,
      @JsonKey(name: 'twitter_name') String twitterName = '',
      String url = ''}) {
    return _ArtistFullInfo(
      alternateNames: alternateNames,
      apiPath: apiPath,
      facebookName: facebookName,
      headerImageUrl: headerImageUrl,
      id: id,
      imageUrl: imageUrl,
      instagramName: instagramName,
      name: name,
      twitterName: twitterName,
      url: url,
    );
  }

  ArtistFullInfo fromJson(Map<String, Object?> json) {
    return ArtistFullInfo.fromJson(json);
  }
}

/// @nodoc
const $ArtistFullInfo = _$ArtistFullInfoTearOff();

/// @nodoc
mixin _$ArtistFullInfo {
  @JsonKey(name: 'alternate_names')
  List<String> get alternateNames => throw _privateConstructorUsedError;
  @JsonKey(name: 'api_path')
  String get apiPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_name')
  String get facebookName => throw _privateConstructorUsedError;
  @JsonKey(name: 'header_image_url')
  String get headerImageUrl => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_name')
  String get instagramName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_name')
  String get twitterName => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistFullInfoCopyWith<ArtistFullInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistFullInfoCopyWith<$Res> {
  factory $ArtistFullInfoCopyWith(
          ArtistFullInfo value, $Res Function(ArtistFullInfo) then) =
      _$ArtistFullInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'alternate_names') List<String> alternateNames,
      @JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'facebook_name') String facebookName,
      @JsonKey(name: 'header_image_url') String headerImageUrl,
      int id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'instagram_name') String instagramName,
      String name,
      @JsonKey(name: 'twitter_name') String twitterName,
      String url});
}

/// @nodoc
class _$ArtistFullInfoCopyWithImpl<$Res>
    implements $ArtistFullInfoCopyWith<$Res> {
  _$ArtistFullInfoCopyWithImpl(this._value, this._then);

  final ArtistFullInfo _value;
  // ignore: unused_field
  final $Res Function(ArtistFullInfo) _then;

  @override
  $Res call({
    Object? alternateNames = freezed,
    Object? apiPath = freezed,
    Object? facebookName = freezed,
    Object? headerImageUrl = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? instagramName = freezed,
    Object? name = freezed,
    Object? twitterName = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      alternateNames: alternateNames == freezed
          ? _value.alternateNames
          : alternateNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      facebookName: facebookName == freezed
          ? _value.facebookName
          : facebookName // ignore: cast_nullable_to_non_nullable
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
      instagramName: instagramName == freezed
          ? _value.instagramName
          : instagramName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      twitterName: twitterName == freezed
          ? _value.twitterName
          : twitterName // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtistFullInfoCopyWith<$Res>
    implements $ArtistFullInfoCopyWith<$Res> {
  factory _$ArtistFullInfoCopyWith(
          _ArtistFullInfo value, $Res Function(_ArtistFullInfo) then) =
      __$ArtistFullInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'alternate_names') List<String> alternateNames,
      @JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'facebook_name') String facebookName,
      @JsonKey(name: 'header_image_url') String headerImageUrl,
      int id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'instagram_name') String instagramName,
      String name,
      @JsonKey(name: 'twitter_name') String twitterName,
      String url});
}

/// @nodoc
class __$ArtistFullInfoCopyWithImpl<$Res>
    extends _$ArtistFullInfoCopyWithImpl<$Res>
    implements _$ArtistFullInfoCopyWith<$Res> {
  __$ArtistFullInfoCopyWithImpl(
      _ArtistFullInfo _value, $Res Function(_ArtistFullInfo) _then)
      : super(_value, (v) => _then(v as _ArtistFullInfo));

  @override
  _ArtistFullInfo get _value => super._value as _ArtistFullInfo;

  @override
  $Res call({
    Object? alternateNames = freezed,
    Object? apiPath = freezed,
    Object? facebookName = freezed,
    Object? headerImageUrl = freezed,
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? instagramName = freezed,
    Object? name = freezed,
    Object? twitterName = freezed,
    Object? url = freezed,
  }) {
    return _then(_ArtistFullInfo(
      alternateNames: alternateNames == freezed
          ? _value.alternateNames
          : alternateNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      facebookName: facebookName == freezed
          ? _value.facebookName
          : facebookName // ignore: cast_nullable_to_non_nullable
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
      instagramName: instagramName == freezed
          ? _value.instagramName
          : instagramName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      twitterName: twitterName == freezed
          ? _value.twitterName
          : twitterName // ignore: cast_nullable_to_non_nullable
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
class _$_ArtistFullInfo implements _ArtistFullInfo {
  const _$_ArtistFullInfo(
      {@JsonKey(name: 'alternate_names') this.alternateNames = const [],
      @JsonKey(name: 'api_path') this.apiPath = '',
      @JsonKey(name: 'facebook_name') this.facebookName = '',
      @JsonKey(name: 'header_image_url') this.headerImageUrl = '',
      required this.id,
      @JsonKey(name: 'image_url') this.imageUrl = '',
      @JsonKey(name: 'instagram_name') this.instagramName = '',
      required this.name,
      @JsonKey(name: 'twitter_name') this.twitterName = '',
      this.url = ''});

  factory _$_ArtistFullInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistFullInfoFromJson(json);

  @override
  @JsonKey(name: 'alternate_names')
  final List<String> alternateNames;
  @override
  @JsonKey(name: 'api_path')
  final String apiPath;
  @override
  @JsonKey(name: 'facebook_name')
  final String facebookName;
  @override
  @JsonKey(name: 'header_image_url')
  final String headerImageUrl;
  @override
  final int id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'instagram_name')
  final String instagramName;
  @override
  final String name;
  @override
  @JsonKey(name: 'twitter_name')
  final String twitterName;
  @JsonKey(defaultValue: '')
  @override
  final String url;

  @override
  String toString() {
    return 'ArtistFullInfo(alternateNames: $alternateNames, apiPath: $apiPath, facebookName: $facebookName, headerImageUrl: $headerImageUrl, id: $id, imageUrl: $imageUrl, instagramName: $instagramName, name: $name, twitterName: $twitterName, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistFullInfo &&
            const DeepCollectionEquality()
                .equals(other.alternateNames, alternateNames) &&
            const DeepCollectionEquality().equals(other.apiPath, apiPath) &&
            const DeepCollectionEquality()
                .equals(other.facebookName, facebookName) &&
            const DeepCollectionEquality()
                .equals(other.headerImageUrl, headerImageUrl) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.instagramName, instagramName) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.twitterName, twitterName) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(alternateNames),
      const DeepCollectionEquality().hash(apiPath),
      const DeepCollectionEquality().hash(facebookName),
      const DeepCollectionEquality().hash(headerImageUrl),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(instagramName),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(twitterName),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$ArtistFullInfoCopyWith<_ArtistFullInfo> get copyWith =>
      __$ArtistFullInfoCopyWithImpl<_ArtistFullInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistFullInfoToJson(this);
  }
}

abstract class _ArtistFullInfo implements ArtistFullInfo {
  const factory _ArtistFullInfo(
      {@JsonKey(name: 'alternate_names') List<String> alternateNames,
      @JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'facebook_name') String facebookName,
      @JsonKey(name: 'header_image_url') String headerImageUrl,
      required int id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'instagram_name') String instagramName,
      required String name,
      @JsonKey(name: 'twitter_name') String twitterName,
      String url}) = _$_ArtistFullInfo;

  factory _ArtistFullInfo.fromJson(Map<String, dynamic> json) =
      _$_ArtistFullInfo.fromJson;

  @override
  @JsonKey(name: 'alternate_names')
  List<String> get alternateNames;
  @override
  @JsonKey(name: 'api_path')
  String get apiPath;
  @override
  @JsonKey(name: 'facebook_name')
  String get facebookName;
  @override
  @JsonKey(name: 'header_image_url')
  String get headerImageUrl;
  @override
  int get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'instagram_name')
  String get instagramName;
  @override
  String get name;
  @override
  @JsonKey(name: 'twitter_name')
  String get twitterName;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$ArtistFullInfoCopyWith<_ArtistFullInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
