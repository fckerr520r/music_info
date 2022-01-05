// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'song_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SongModel _$SongModelFromJson(Map<String, dynamic> json) {
  return _SearchGeniusModel.fromJson(json);
}

/// @nodoc
class _$SongModelTearOff {
  const _$SongModelTearOff();

  _SearchGeniusModel call(
      {required Meta meta, required ResponseSong response}) {
    return _SearchGeniusModel(
      meta: meta,
      response: response,
    );
  }

  SongModel fromJson(Map<String, Object?> json) {
    return SongModel.fromJson(json);
  }
}

/// @nodoc
const $SongModel = _$SongModelTearOff();

/// @nodoc
mixin _$SongModel {
  Meta get meta => throw _privateConstructorUsedError;
  ResponseSong get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongModelCopyWith<SongModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongModelCopyWith<$Res> {
  factory $SongModelCopyWith(SongModel value, $Res Function(SongModel) then) =
      _$SongModelCopyWithImpl<$Res>;
  $Res call({Meta meta, ResponseSong response});

  $MetaCopyWith<$Res> get meta;
  $ResponseSongCopyWith<$Res> get response;
}

/// @nodoc
class _$SongModelCopyWithImpl<$Res> implements $SongModelCopyWith<$Res> {
  _$SongModelCopyWithImpl(this._value, this._then);

  final SongModel _value;
  // ignore: unused_field
  final $Res Function(SongModel) _then;

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
              as ResponseSong,
    ));
  }

  @override
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  $ResponseSongCopyWith<$Res> get response {
    return $ResponseSongCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$SearchGeniusModelCopyWith<$Res>
    implements $SongModelCopyWith<$Res> {
  factory _$SearchGeniusModelCopyWith(
          _SearchGeniusModel value, $Res Function(_SearchGeniusModel) then) =
      __$SearchGeniusModelCopyWithImpl<$Res>;
  @override
  $Res call({Meta meta, ResponseSong response});

  @override
  $MetaCopyWith<$Res> get meta;
  @override
  $ResponseSongCopyWith<$Res> get response;
}

/// @nodoc
class __$SearchGeniusModelCopyWithImpl<$Res>
    extends _$SongModelCopyWithImpl<$Res>
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
              as ResponseSong,
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
  final ResponseSong response;

  @override
  String toString() {
    return 'SongModel(meta: $meta, response: $response)';
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

abstract class _SearchGeniusModel implements SongModel {
  const factory _SearchGeniusModel(
      {required Meta meta,
      required ResponseSong response}) = _$_SearchGeniusModel;

  factory _SearchGeniusModel.fromJson(Map<String, dynamic> json) =
      _$_SearchGeniusModel.fromJson;

  @override
  Meta get meta;
  @override
  ResponseSong get response;
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

ResponseSong _$ResponseSongFromJson(Map<String, dynamic> json) {
  return _ResponseSong.fromJson(json);
}

/// @nodoc
class _$ResponseSongTearOff {
  const _$ResponseSongTearOff();

  _ResponseSong call({required Song song}) {
    return _ResponseSong(
      song: song,
    );
  }

  ResponseSong fromJson(Map<String, Object?> json) {
    return ResponseSong.fromJson(json);
  }
}

/// @nodoc
const $ResponseSong = _$ResponseSongTearOff();

/// @nodoc
mixin _$ResponseSong {
  Song get song => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSongCopyWith<ResponseSong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSongCopyWith<$Res> {
  factory $ResponseSongCopyWith(
          ResponseSong value, $Res Function(ResponseSong) then) =
      _$ResponseSongCopyWithImpl<$Res>;
  $Res call({Song song});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$ResponseSongCopyWithImpl<$Res> implements $ResponseSongCopyWith<$Res> {
  _$ResponseSongCopyWithImpl(this._value, this._then);

  final ResponseSong _value;
  // ignore: unused_field
  final $Res Function(ResponseSong) _then;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_value.copyWith(
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }

  @override
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value));
    });
  }
}

/// @nodoc
abstract class _$ResponseSongCopyWith<$Res>
    implements $ResponseSongCopyWith<$Res> {
  factory _$ResponseSongCopyWith(
          _ResponseSong value, $Res Function(_ResponseSong) then) =
      __$ResponseSongCopyWithImpl<$Res>;
  @override
  $Res call({Song song});

  @override
  $SongCopyWith<$Res> get song;
}

/// @nodoc
class __$ResponseSongCopyWithImpl<$Res> extends _$ResponseSongCopyWithImpl<$Res>
    implements _$ResponseSongCopyWith<$Res> {
  __$ResponseSongCopyWithImpl(
      _ResponseSong _value, $Res Function(_ResponseSong) _then)
      : super(_value, (v) => _then(v as _ResponseSong));

  @override
  _ResponseSong get _value => super._value as _ResponseSong;

  @override
  $Res call({
    Object? song = freezed,
  }) {
    return _then(_ResponseSong(
      song: song == freezed
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ResponseSong implements _ResponseSong {
  const _$_ResponseSong({required this.song});

  factory _$_ResponseSong.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseSongFromJson(json);

  @override
  final Song song;

  @override
  String toString() {
    return 'ResponseSong(song: $song)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseSong &&
            const DeepCollectionEquality().equals(other.song, song));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(song));

  @JsonKey(ignore: true)
  @override
  _$ResponseSongCopyWith<_ResponseSong> get copyWith =>
      __$ResponseSongCopyWithImpl<_ResponseSong>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseSongToJson(this);
  }
}

abstract class _ResponseSong implements ResponseSong {
  const factory _ResponseSong({required Song song}) = _$_ResponseSong;

  factory _ResponseSong.fromJson(Map<String, dynamic> json) =
      _$_ResponseSong.fromJson;

  @override
  Song get song;
  @override
  @JsonKey(ignore: true)
  _$ResponseSongCopyWith<_ResponseSong> get copyWith =>
      throw _privateConstructorUsedError;
}

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
class _$SongTearOff {
  const _$SongTearOff();

  _Song call(
      {@JsonKey(name: 'api_path')
          String apiPath = '',
      @JsonKey(name: 'apple_music_id')
          String appleMusicId = '',
      @JsonKey(name: 'apple_music_player_url')
          String appleMusicPlayerUrl = '',
      @JsonKey(name: 'featured_video')
          bool featuredVideo = false,
      @JsonKey(name: 'full_title')
          String fullTitle = '',
      @JsonKey(name: 'header_image_thumbnail_url')
          String headerImageThumbnailUrl = '',
      @JsonKey(name: 'header_image_url')
          String headerImageUrl = '',
      int id = 0,
      String path = '',
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @JsonKey(name: 'song_art_image_thumbnail_url')
          String songArtImageThumbnailUrl = '',
      @JsonKey(name: 'song_art_image_url')
          String songArtImageUrl = '',
      String title = '',
      @JsonKey(name: 'title_with_featured')
          String titleWithFeatured = '',
      String url = '',
      SongAlbum? album,
      List<Media> media = const [],
      @JsonKey(name: 'primary_artist')
          required ArtistMainInfo primaryArtist,
      @JsonKey(name: 'verified_lyrics_by')
          List<dynamic> verifiedLyricsBy = const [],
      @JsonKey(name: 'featured_artists')
          List<ArtistMainInfo>? featuredArtists = const [],
      @JsonKey(name: 'producer_artists')
          List<ArtistMainInfo>? producerArtists = const [],
      @JsonKey(name: 'writer_artists')
          List<ArtistMainInfo>? writerArtists = const [],
      String lyric = ''}) {
    return _Song(
      apiPath: apiPath,
      appleMusicId: appleMusicId,
      appleMusicPlayerUrl: appleMusicPlayerUrl,
      featuredVideo: featuredVideo,
      fullTitle: fullTitle,
      headerImageThumbnailUrl: headerImageThumbnailUrl,
      headerImageUrl: headerImageUrl,
      id: id,
      path: path,
      releaseDate: releaseDate,
      songArtImageThumbnailUrl: songArtImageThumbnailUrl,
      songArtImageUrl: songArtImageUrl,
      title: title,
      titleWithFeatured: titleWithFeatured,
      url: url,
      album: album,
      media: media,
      primaryArtist: primaryArtist,
      verifiedLyricsBy: verifiedLyricsBy,
      featuredArtists: featuredArtists,
      producerArtists: producerArtists,
      writerArtists: writerArtists,
      lyric: lyric,
    );
  }

  Song fromJson(Map<String, Object?> json) {
    return Song.fromJson(json);
  }
}

/// @nodoc
const $Song = _$SongTearOff();

/// @nodoc
mixin _$Song {
  @JsonKey(name: 'api_path')
  String get apiPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'apple_music_id')
  String get appleMusicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'apple_music_player_url')
  String get appleMusicPlayerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_video')
  bool get featuredVideo => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_title')
  String get fullTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'header_image_thumbnail_url')
  String get headerImageThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'header_image_url')
  String get headerImageUrl => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'song_art_image_thumbnail_url')
  String get songArtImageThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'song_art_image_url')
  String get songArtImageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_with_featured')
  String get titleWithFeatured => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  SongAlbum? get album => throw _privateConstructorUsedError;
  List<Media> get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_artist')
  ArtistMainInfo get primaryArtist => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_lyrics_by')
  List<dynamic> get verifiedLyricsBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_artists')
  List<ArtistMainInfo>? get featuredArtists =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'producer_artists')
  List<ArtistMainInfo>? get producerArtists =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'writer_artists')
  List<ArtistMainInfo>? get writerArtists => throw _privateConstructorUsedError;
  String get lyric => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'api_path')
          String apiPath,
      @JsonKey(name: 'apple_music_id')
          String appleMusicId,
      @JsonKey(name: 'apple_music_player_url')
          String appleMusicPlayerUrl,
      @JsonKey(name: 'featured_video')
          bool featuredVideo,
      @JsonKey(name: 'full_title')
          String fullTitle,
      @JsonKey(name: 'header_image_thumbnail_url')
          String headerImageThumbnailUrl,
      @JsonKey(name: 'header_image_url')
          String headerImageUrl,
      int id,
      String path,
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @JsonKey(name: 'song_art_image_thumbnail_url')
          String songArtImageThumbnailUrl,
      @JsonKey(name: 'song_art_image_url')
          String songArtImageUrl,
      String title,
      @JsonKey(name: 'title_with_featured')
          String titleWithFeatured,
      String url,
      SongAlbum? album,
      List<Media> media,
      @JsonKey(name: 'primary_artist')
          ArtistMainInfo primaryArtist,
      @JsonKey(name: 'verified_lyrics_by')
          List<dynamic> verifiedLyricsBy,
      @JsonKey(name: 'featured_artists')
          List<ArtistMainInfo>? featuredArtists,
      @JsonKey(name: 'producer_artists')
          List<ArtistMainInfo>? producerArtists,
      @JsonKey(name: 'writer_artists')
          List<ArtistMainInfo>? writerArtists,
      String lyric});

  $SongAlbumCopyWith<$Res>? get album;
  $ArtistMainInfoCopyWith<$Res> get primaryArtist;
}

/// @nodoc
class _$SongCopyWithImpl<$Res> implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  final Song _value;
  // ignore: unused_field
  final $Res Function(Song) _then;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? appleMusicId = freezed,
    Object? appleMusicPlayerUrl = freezed,
    Object? featuredVideo = freezed,
    Object? fullTitle = freezed,
    Object? headerImageThumbnailUrl = freezed,
    Object? headerImageUrl = freezed,
    Object? id = freezed,
    Object? path = freezed,
    Object? releaseDate = freezed,
    Object? songArtImageThumbnailUrl = freezed,
    Object? songArtImageUrl = freezed,
    Object? title = freezed,
    Object? titleWithFeatured = freezed,
    Object? url = freezed,
    Object? album = freezed,
    Object? media = freezed,
    Object? primaryArtist = freezed,
    Object? verifiedLyricsBy = freezed,
    Object? featuredArtists = freezed,
    Object? producerArtists = freezed,
    Object? writerArtists = freezed,
    Object? lyric = freezed,
  }) {
    return _then(_value.copyWith(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      appleMusicId: appleMusicId == freezed
          ? _value.appleMusicId
          : appleMusicId // ignore: cast_nullable_to_non_nullable
              as String,
      appleMusicPlayerUrl: appleMusicPlayerUrl == freezed
          ? _value.appleMusicPlayerUrl
          : appleMusicPlayerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      featuredVideo: featuredVideo == freezed
          ? _value.featuredVideo
          : featuredVideo // ignore: cast_nullable_to_non_nullable
              as bool,
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
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SongAlbum?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      primaryArtist: primaryArtist == freezed
          ? _value.primaryArtist
          : primaryArtist // ignore: cast_nullable_to_non_nullable
              as ArtistMainInfo,
      verifiedLyricsBy: verifiedLyricsBy == freezed
          ? _value.verifiedLyricsBy
          : verifiedLyricsBy // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      featuredArtists: featuredArtists == freezed
          ? _value.featuredArtists
          : featuredArtists // ignore: cast_nullable_to_non_nullable
              as List<ArtistMainInfo>?,
      producerArtists: producerArtists == freezed
          ? _value.producerArtists
          : producerArtists // ignore: cast_nullable_to_non_nullable
              as List<ArtistMainInfo>?,
      writerArtists: writerArtists == freezed
          ? _value.writerArtists
          : writerArtists // ignore: cast_nullable_to_non_nullable
              as List<ArtistMainInfo>?,
      lyric: lyric == freezed
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SongAlbumCopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $SongAlbumCopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value));
    });
  }

  @override
  $ArtistMainInfoCopyWith<$Res> get primaryArtist {
    return $ArtistMainInfoCopyWith<$Res>(_value.primaryArtist, (value) {
      return _then(_value.copyWith(primaryArtist: value));
    });
  }
}

/// @nodoc
abstract class _$SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$SongCopyWith(_Song value, $Res Function(_Song) then) =
      __$SongCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'api_path')
          String apiPath,
      @JsonKey(name: 'apple_music_id')
          String appleMusicId,
      @JsonKey(name: 'apple_music_player_url')
          String appleMusicPlayerUrl,
      @JsonKey(name: 'featured_video')
          bool featuredVideo,
      @JsonKey(name: 'full_title')
          String fullTitle,
      @JsonKey(name: 'header_image_thumbnail_url')
          String headerImageThumbnailUrl,
      @JsonKey(name: 'header_image_url')
          String headerImageUrl,
      int id,
      String path,
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @JsonKey(name: 'song_art_image_thumbnail_url')
          String songArtImageThumbnailUrl,
      @JsonKey(name: 'song_art_image_url')
          String songArtImageUrl,
      String title,
      @JsonKey(name: 'title_with_featured')
          String titleWithFeatured,
      String url,
      SongAlbum? album,
      List<Media> media,
      @JsonKey(name: 'primary_artist')
          ArtistMainInfo primaryArtist,
      @JsonKey(name: 'verified_lyrics_by')
          List<dynamic> verifiedLyricsBy,
      @JsonKey(name: 'featured_artists')
          List<ArtistMainInfo>? featuredArtists,
      @JsonKey(name: 'producer_artists')
          List<ArtistMainInfo>? producerArtists,
      @JsonKey(name: 'writer_artists')
          List<ArtistMainInfo>? writerArtists,
      String lyric});

  @override
  $SongAlbumCopyWith<$Res>? get album;
  @override
  $ArtistMainInfoCopyWith<$Res> get primaryArtist;
}

/// @nodoc
class __$SongCopyWithImpl<$Res> extends _$SongCopyWithImpl<$Res>
    implements _$SongCopyWith<$Res> {
  __$SongCopyWithImpl(_Song _value, $Res Function(_Song) _then)
      : super(_value, (v) => _then(v as _Song));

  @override
  _Song get _value => super._value as _Song;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? appleMusicId = freezed,
    Object? appleMusicPlayerUrl = freezed,
    Object? featuredVideo = freezed,
    Object? fullTitle = freezed,
    Object? headerImageThumbnailUrl = freezed,
    Object? headerImageUrl = freezed,
    Object? id = freezed,
    Object? path = freezed,
    Object? releaseDate = freezed,
    Object? songArtImageThumbnailUrl = freezed,
    Object? songArtImageUrl = freezed,
    Object? title = freezed,
    Object? titleWithFeatured = freezed,
    Object? url = freezed,
    Object? album = freezed,
    Object? media = freezed,
    Object? primaryArtist = freezed,
    Object? verifiedLyricsBy = freezed,
    Object? featuredArtists = freezed,
    Object? producerArtists = freezed,
    Object? writerArtists = freezed,
    Object? lyric = freezed,
  }) {
    return _then(_Song(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      appleMusicId: appleMusicId == freezed
          ? _value.appleMusicId
          : appleMusicId // ignore: cast_nullable_to_non_nullable
              as String,
      appleMusicPlayerUrl: appleMusicPlayerUrl == freezed
          ? _value.appleMusicPlayerUrl
          : appleMusicPlayerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      featuredVideo: featuredVideo == freezed
          ? _value.featuredVideo
          : featuredVideo // ignore: cast_nullable_to_non_nullable
              as bool,
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
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SongAlbum?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      primaryArtist: primaryArtist == freezed
          ? _value.primaryArtist
          : primaryArtist // ignore: cast_nullable_to_non_nullable
              as ArtistMainInfo,
      verifiedLyricsBy: verifiedLyricsBy == freezed
          ? _value.verifiedLyricsBy
          : verifiedLyricsBy // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      featuredArtists: featuredArtists == freezed
          ? _value.featuredArtists
          : featuredArtists // ignore: cast_nullable_to_non_nullable
              as List<ArtistMainInfo>?,
      producerArtists: producerArtists == freezed
          ? _value.producerArtists
          : producerArtists // ignore: cast_nullable_to_non_nullable
              as List<ArtistMainInfo>?,
      writerArtists: writerArtists == freezed
          ? _value.writerArtists
          : writerArtists // ignore: cast_nullable_to_non_nullable
              as List<ArtistMainInfo>?,
      lyric: lyric == freezed
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Song implements _Song {
  const _$_Song(
      {@JsonKey(name: 'api_path')
          this.apiPath = '',
      @JsonKey(name: 'apple_music_id')
          this.appleMusicId = '',
      @JsonKey(name: 'apple_music_player_url')
          this.appleMusicPlayerUrl = '',
      @JsonKey(name: 'featured_video')
          this.featuredVideo = false,
      @JsonKey(name: 'full_title')
          this.fullTitle = '',
      @JsonKey(name: 'header_image_thumbnail_url')
          this.headerImageThumbnailUrl = '',
      @JsonKey(name: 'header_image_url')
          this.headerImageUrl = '',
      this.id = 0,
      this.path = '',
      @JsonKey(name: 'release_date')
          this.releaseDate,
      @JsonKey(name: 'song_art_image_thumbnail_url')
          this.songArtImageThumbnailUrl = '',
      @JsonKey(name: 'song_art_image_url')
          this.songArtImageUrl = '',
      this.title = '',
      @JsonKey(name: 'title_with_featured')
          this.titleWithFeatured = '',
      this.url = '',
      this.album,
      this.media = const [],
      @JsonKey(name: 'primary_artist')
          required this.primaryArtist,
      @JsonKey(name: 'verified_lyrics_by')
          this.verifiedLyricsBy = const [],
      @JsonKey(name: 'featured_artists')
          this.featuredArtists = const [],
      @JsonKey(name: 'producer_artists')
          this.producerArtists = const [],
      @JsonKey(name: 'writer_artists')
          this.writerArtists = const [],
      this.lyric = ''});

  factory _$_Song.fromJson(Map<String, dynamic> json) => _$$_SongFromJson(json);

  @override
  @JsonKey(name: 'api_path')
  final String apiPath;
  @override
  @JsonKey(name: 'apple_music_id')
  final String appleMusicId;
  @override
  @JsonKey(name: 'apple_music_player_url')
  final String appleMusicPlayerUrl;
  @override
  @JsonKey(name: 'featured_video')
  final bool featuredVideo;
  @override
  @JsonKey(name: 'full_title')
  final String fullTitle;
  @override
  @JsonKey(name: 'header_image_thumbnail_url')
  final String headerImageThumbnailUrl;
  @override
  @JsonKey(name: 'header_image_url')
  final String headerImageUrl;
  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String path;
  @override
  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
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
  final SongAlbum? album;
  @JsonKey(defaultValue: const [])
  @override
  final List<Media> media;
  @override
  @JsonKey(name: 'primary_artist')
  final ArtistMainInfo primaryArtist;
  @override
  @JsonKey(name: 'verified_lyrics_by')
  final List<dynamic> verifiedLyricsBy;
  @override
  @JsonKey(name: 'featured_artists')
  final List<ArtistMainInfo>? featuredArtists;
  @override
  @JsonKey(name: 'producer_artists')
  final List<ArtistMainInfo>? producerArtists;
  @override
  @JsonKey(name: 'writer_artists')
  final List<ArtistMainInfo>? writerArtists;
  @JsonKey(defaultValue: '')
  @override
  final String lyric;

  @override
  String toString() {
    return 'Song(apiPath: $apiPath, appleMusicId: $appleMusicId, appleMusicPlayerUrl: $appleMusicPlayerUrl, featuredVideo: $featuredVideo, fullTitle: $fullTitle, headerImageThumbnailUrl: $headerImageThumbnailUrl, headerImageUrl: $headerImageUrl, id: $id, path: $path, releaseDate: $releaseDate, songArtImageThumbnailUrl: $songArtImageThumbnailUrl, songArtImageUrl: $songArtImageUrl, title: $title, titleWithFeatured: $titleWithFeatured, url: $url, album: $album, media: $media, primaryArtist: $primaryArtist, verifiedLyricsBy: $verifiedLyricsBy, featuredArtists: $featuredArtists, producerArtists: $producerArtists, writerArtists: $writerArtists, lyric: $lyric)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Song &&
            const DeepCollectionEquality().equals(other.apiPath, apiPath) &&
            const DeepCollectionEquality()
                .equals(other.appleMusicId, appleMusicId) &&
            const DeepCollectionEquality()
                .equals(other.appleMusicPlayerUrl, appleMusicPlayerUrl) &&
            const DeepCollectionEquality()
                .equals(other.featuredVideo, featuredVideo) &&
            const DeepCollectionEquality().equals(other.fullTitle, fullTitle) &&
            const DeepCollectionEquality().equals(
                other.headerImageThumbnailUrl, headerImageThumbnailUrl) &&
            const DeepCollectionEquality()
                .equals(other.headerImageUrl, headerImageUrl) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(
                other.songArtImageThumbnailUrl, songArtImageThumbnailUrl) &&
            const DeepCollectionEquality()
                .equals(other.songArtImageUrl, songArtImageUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.titleWithFeatured, titleWithFeatured) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.album, album) &&
            const DeepCollectionEquality().equals(other.media, media) &&
            const DeepCollectionEquality()
                .equals(other.primaryArtist, primaryArtist) &&
            const DeepCollectionEquality()
                .equals(other.verifiedLyricsBy, verifiedLyricsBy) &&
            const DeepCollectionEquality()
                .equals(other.featuredArtists, featuredArtists) &&
            const DeepCollectionEquality()
                .equals(other.producerArtists, producerArtists) &&
            const DeepCollectionEquality()
                .equals(other.writerArtists, writerArtists) &&
            const DeepCollectionEquality().equals(other.lyric, lyric));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(apiPath),
        const DeepCollectionEquality().hash(appleMusicId),
        const DeepCollectionEquality().hash(appleMusicPlayerUrl),
        const DeepCollectionEquality().hash(featuredVideo),
        const DeepCollectionEquality().hash(fullTitle),
        const DeepCollectionEquality().hash(headerImageThumbnailUrl),
        const DeepCollectionEquality().hash(headerImageUrl),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(path),
        const DeepCollectionEquality().hash(releaseDate),
        const DeepCollectionEquality().hash(songArtImageThumbnailUrl),
        const DeepCollectionEquality().hash(songArtImageUrl),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(titleWithFeatured),
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(album),
        const DeepCollectionEquality().hash(media),
        const DeepCollectionEquality().hash(primaryArtist),
        const DeepCollectionEquality().hash(verifiedLyricsBy),
        const DeepCollectionEquality().hash(featuredArtists),
        const DeepCollectionEquality().hash(producerArtists),
        const DeepCollectionEquality().hash(writerArtists),
        const DeepCollectionEquality().hash(lyric)
      ]);

  @JsonKey(ignore: true)
  @override
  _$SongCopyWith<_Song> get copyWith =>
      __$SongCopyWithImpl<_Song>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SongToJson(this);
  }
}

abstract class _Song implements Song {
  const factory _Song(
      {@JsonKey(name: 'api_path')
          String apiPath,
      @JsonKey(name: 'apple_music_id')
          String appleMusicId,
      @JsonKey(name: 'apple_music_player_url')
          String appleMusicPlayerUrl,
      @JsonKey(name: 'featured_video')
          bool featuredVideo,
      @JsonKey(name: 'full_title')
          String fullTitle,
      @JsonKey(name: 'header_image_thumbnail_url')
          String headerImageThumbnailUrl,
      @JsonKey(name: 'header_image_url')
          String headerImageUrl,
      int id,
      String path,
      @JsonKey(name: 'release_date')
          DateTime? releaseDate,
      @JsonKey(name: 'song_art_image_thumbnail_url')
          String songArtImageThumbnailUrl,
      @JsonKey(name: 'song_art_image_url')
          String songArtImageUrl,
      String title,
      @JsonKey(name: 'title_with_featured')
          String titleWithFeatured,
      String url,
      SongAlbum? album,
      List<Media> media,
      @JsonKey(name: 'primary_artist')
          required ArtistMainInfo primaryArtist,
      @JsonKey(name: 'verified_lyrics_by')
          List<dynamic> verifiedLyricsBy,
      @JsonKey(name: 'featured_artists')
          List<ArtistMainInfo>? featuredArtists,
      @JsonKey(name: 'producer_artists')
          List<ArtistMainInfo>? producerArtists,
      @JsonKey(name: 'writer_artists')
          List<ArtistMainInfo>? writerArtists,
      String lyric}) = _$_Song;

  factory _Song.fromJson(Map<String, dynamic> json) = _$_Song.fromJson;

  @override
  @JsonKey(name: 'api_path')
  String get apiPath;
  @override
  @JsonKey(name: 'apple_music_id')
  String get appleMusicId;
  @override
  @JsonKey(name: 'apple_music_player_url')
  String get appleMusicPlayerUrl;
  @override
  @JsonKey(name: 'featured_video')
  bool get featuredVideo;
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
  String get path;
  @override
  @JsonKey(name: 'release_date')
  DateTime? get releaseDate;
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
  SongAlbum? get album;
  @override
  List<Media> get media;
  @override
  @JsonKey(name: 'primary_artist')
  ArtistMainInfo get primaryArtist;
  @override
  @JsonKey(name: 'verified_lyrics_by')
  List<dynamic> get verifiedLyricsBy;
  @override
  @JsonKey(name: 'featured_artists')
  List<ArtistMainInfo>? get featuredArtists;
  @override
  @JsonKey(name: 'producer_artists')
  List<ArtistMainInfo>? get producerArtists;
  @override
  @JsonKey(name: 'writer_artists')
  List<ArtistMainInfo>? get writerArtists;
  @override
  String get lyric;
  @override
  @JsonKey(ignore: true)
  _$SongCopyWith<_Song> get copyWith => throw _privateConstructorUsedError;
}

SongAlbum _$SongAlbumFromJson(Map<String, dynamic> json) {
  return _SongAlbum.fromJson(json);
}

/// @nodoc
class _$SongAlbumTearOff {
  const _$SongAlbumTearOff();

  _SongAlbum call(
      {@JsonKey(name: 'api_path') String apiPath = '',
      @JsonKey(name: 'cover_art_url') String coverArtUrl = '',
      @JsonKey(name: 'full_title') String fullTitle = '',
      int id = 0,
      String name = '',
      String url = '',
      required ArtistMainInfo artist}) {
    return _SongAlbum(
      apiPath: apiPath,
      coverArtUrl: coverArtUrl,
      fullTitle: fullTitle,
      id: id,
      name: name,
      url: url,
      artist: artist,
    );
  }

  SongAlbum fromJson(Map<String, Object?> json) {
    return SongAlbum.fromJson(json);
  }
}

/// @nodoc
const $SongAlbum = _$SongAlbumTearOff();

/// @nodoc
mixin _$SongAlbum {
  @JsonKey(name: 'api_path')
  String get apiPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_art_url')
  String get coverArtUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_title')
  String get fullTitle => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  ArtistMainInfo get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongAlbumCopyWith<SongAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongAlbumCopyWith<$Res> {
  factory $SongAlbumCopyWith(SongAlbum value, $Res Function(SongAlbum) then) =
      _$SongAlbumCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'cover_art_url') String coverArtUrl,
      @JsonKey(name: 'full_title') String fullTitle,
      int id,
      String name,
      String url,
      ArtistMainInfo artist});

  $ArtistMainInfoCopyWith<$Res> get artist;
}

/// @nodoc
class _$SongAlbumCopyWithImpl<$Res> implements $SongAlbumCopyWith<$Res> {
  _$SongAlbumCopyWithImpl(this._value, this._then);

  final SongAlbum _value;
  // ignore: unused_field
  final $Res Function(SongAlbum) _then;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? coverArtUrl = freezed,
    Object? fullTitle = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      coverArtUrl: coverArtUrl == freezed
          ? _value.coverArtUrl
          : coverArtUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistMainInfo,
    ));
  }

  @override
  $ArtistMainInfoCopyWith<$Res> get artist {
    return $ArtistMainInfoCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc
abstract class _$SongAlbumCopyWith<$Res> implements $SongAlbumCopyWith<$Res> {
  factory _$SongAlbumCopyWith(
          _SongAlbum value, $Res Function(_SongAlbum) then) =
      __$SongAlbumCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'cover_art_url') String coverArtUrl,
      @JsonKey(name: 'full_title') String fullTitle,
      int id,
      String name,
      String url,
      ArtistMainInfo artist});

  @override
  $ArtistMainInfoCopyWith<$Res> get artist;
}

/// @nodoc
class __$SongAlbumCopyWithImpl<$Res> extends _$SongAlbumCopyWithImpl<$Res>
    implements _$SongAlbumCopyWith<$Res> {
  __$SongAlbumCopyWithImpl(_SongAlbum _value, $Res Function(_SongAlbum) _then)
      : super(_value, (v) => _then(v as _SongAlbum));

  @override
  _SongAlbum get _value => super._value as _SongAlbum;

  @override
  $Res call({
    Object? apiPath = freezed,
    Object? coverArtUrl = freezed,
    Object? fullTitle = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? artist = freezed,
  }) {
    return _then(_SongAlbum(
      apiPath: apiPath == freezed
          ? _value.apiPath
          : apiPath // ignore: cast_nullable_to_non_nullable
              as String,
      coverArtUrl: coverArtUrl == freezed
          ? _value.coverArtUrl
          : coverArtUrl // ignore: cast_nullable_to_non_nullable
              as String,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistMainInfo,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SongAlbum implements _SongAlbum {
  const _$_SongAlbum(
      {@JsonKey(name: 'api_path') this.apiPath = '',
      @JsonKey(name: 'cover_art_url') this.coverArtUrl = '',
      @JsonKey(name: 'full_title') this.fullTitle = '',
      this.id = 0,
      this.name = '',
      this.url = '',
      required this.artist});

  factory _$_SongAlbum.fromJson(Map<String, dynamic> json) =>
      _$$_SongAlbumFromJson(json);

  @override
  @JsonKey(name: 'api_path')
  final String apiPath;
  @override
  @JsonKey(name: 'cover_art_url')
  final String coverArtUrl;
  @override
  @JsonKey(name: 'full_title')
  final String fullTitle;
  @JsonKey(defaultValue: 0)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String url;
  @override
  final ArtistMainInfo artist;

  @override
  String toString() {
    return 'SongAlbum(apiPath: $apiPath, coverArtUrl: $coverArtUrl, fullTitle: $fullTitle, id: $id, name: $name, url: $url, artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SongAlbum &&
            const DeepCollectionEquality().equals(other.apiPath, apiPath) &&
            const DeepCollectionEquality()
                .equals(other.coverArtUrl, coverArtUrl) &&
            const DeepCollectionEquality().equals(other.fullTitle, fullTitle) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.artist, artist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(apiPath),
      const DeepCollectionEquality().hash(coverArtUrl),
      const DeepCollectionEquality().hash(fullTitle),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(artist));

  @JsonKey(ignore: true)
  @override
  _$SongAlbumCopyWith<_SongAlbum> get copyWith =>
      __$SongAlbumCopyWithImpl<_SongAlbum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SongAlbumToJson(this);
  }
}

abstract class _SongAlbum implements SongAlbum {
  const factory _SongAlbum(
      {@JsonKey(name: 'api_path') String apiPath,
      @JsonKey(name: 'cover_art_url') String coverArtUrl,
      @JsonKey(name: 'full_title') String fullTitle,
      int id,
      String name,
      String url,
      required ArtistMainInfo artist}) = _$_SongAlbum;

  factory _SongAlbum.fromJson(Map<String, dynamic> json) =
      _$_SongAlbum.fromJson;

  @override
  @JsonKey(name: 'api_path')
  String get apiPath;
  @override
  @JsonKey(name: 'cover_art_url')
  String get coverArtUrl;
  @override
  @JsonKey(name: 'full_title')
  String get fullTitle;
  @override
  int get id;
  @override
  String get name;
  @override
  String get url;
  @override
  ArtistMainInfo get artist;
  @override
  @JsonKey(ignore: true)
  _$SongAlbumCopyWith<_SongAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
class _$MediaTearOff {
  const _$MediaTearOff();

  _Media call(
      {required String provider, required String type, required String url}) {
    return _Media(
      provider: provider,
      type: type,
      url: url,
    );
  }

  Media fromJson(Map<String, Object?> json) {
    return Media.fromJson(json);
  }
}

/// @nodoc
const $Media = _$MediaTearOff();

/// @nodoc
mixin _$Media {
  String get provider => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res>;
  $Res call({String provider, String type, String url});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res> implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  final Media _value;
  // ignore: unused_field
  final $Res Function(Media) _then;

  @override
  $Res call({
    Object? provider = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$MediaCopyWith(_Media value, $Res Function(_Media) then) =
      __$MediaCopyWithImpl<$Res>;
  @override
  $Res call({String provider, String type, String url});
}

/// @nodoc
class __$MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res>
    implements _$MediaCopyWith<$Res> {
  __$MediaCopyWithImpl(_Media _value, $Res Function(_Media) _then)
      : super(_value, (v) => _then(v as _Media));

  @override
  _Media get _value => super._value as _Media;

  @override
  $Res call({
    Object? provider = freezed,
    Object? type = freezed,
    Object? url = freezed,
  }) {
    return _then(_Media(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
class _$_Media implements _Media {
  const _$_Media(
      {required this.provider, required this.type, required this.url});

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  final String provider;
  @override
  final String type;
  @override
  final String url;

  @override
  String toString() {
    return 'Media(provider: $provider, type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Media &&
            const DeepCollectionEquality().equals(other.provider, provider) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(provider),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$MediaCopyWith<_Media> get copyWith =>
      __$MediaCopyWithImpl<_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(this);
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {required String provider,
      required String type,
      required String url}) = _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  String get provider;
  @override
  String get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$MediaCopyWith<_Media> get copyWith => throw _privateConstructorUsedError;
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
