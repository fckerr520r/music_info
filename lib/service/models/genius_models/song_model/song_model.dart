import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_model.g.dart';
part 'song_model.freezed.dart';

SongModel trackChartFromJson(String str) =>
    SongModel.fromJson(json.decode(str));

String trackChartToJson(SongModel data) => json.encode(data.toJson());

List<Song> songsListFromJson(String str) =>
    List<Song>.from(json.decode(str).map((x) => Song.fromJson(x)));

String songsListToJson(List<Song> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class SongModel with _$SongModel {
  @JsonSerializable(explicitToJson: true)
  const factory SongModel({
    required Meta meta,
    required ResponseSong response,
  }) = _SearchGeniusModel;

  factory SongModel.fromJson(Map<String, dynamic> json) =>
      _$SongModelFromJson(json);
}

@freezed
class Meta with _$Meta {
  @JsonSerializable(explicitToJson: true)
  const factory Meta({
    required int status,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class ResponseSong with _$ResponseSong {
  @JsonSerializable(explicitToJson: true)
  const factory ResponseSong({
    required Song song,
  }) = _ResponseSong;

  factory ResponseSong.fromJson(Map<String, dynamic> json) =>
      _$ResponseSongFromJson(json);
}

@freezed
class Song with _$Song {
  @JsonSerializable(explicitToJson: true)
  const factory Song({
    @Default('') @JsonKey(name: 'api_path') String apiPath,
    @Default('') @JsonKey(name: 'apple_music_id') String appleMusicId,
    @Default('')
    @JsonKey(name: 'apple_music_player_url')
        String appleMusicPlayerUrl,
    @Default(false) @JsonKey(name: 'featured_video') bool featuredVideo,
    @Default('') @JsonKey(name: 'full_title') String fullTitle,
    @Default('')
    @JsonKey(name: 'header_image_thumbnail_url')
        String headerImageThumbnailUrl,
    @Default('') @JsonKey(name: 'header_image_url') String headerImageUrl,
    @Default(0) int id,
    @Default('') String path,
    @Default('') @JsonKey(name: 'release_date') DateTime? releaseDate,
    @Default('')
    @JsonKey(name: 'song_art_image_thumbnail_url')
        String songArtImageThumbnailUrl,
    @Default('') @JsonKey(name: 'song_art_image_url') String songArtImageUrl,
    @Default('') String title,
    @Default('') @JsonKey(name: 'title_with_featured') String titleWithFeatured,
    @Default('') String url,
    SongAlbum? album,
    List<Media>? media,
    @JsonKey(name: 'primary_artist') required ArtistMainInfo primaryArtist,
    @Default([])
    @JsonKey(name: 'verified_lyrics_by')
        List<dynamic> verifiedLyricsBy,
    @Default([])
    @JsonKey(name: 'featured_artists')
        List<ArtistMainInfo>? featuredArtists,
    @Default([])
    @JsonKey(name: 'producer_artists')
        List<ArtistMainInfo>? producerArtists,
    @Default([])
    @JsonKey(name: 'writer_artists')
        List<ArtistMainInfo>? writerArtists,
    @Default('') String lyric,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);
}

@freezed
class SongAlbum with _$SongAlbum {
  @JsonSerializable(explicitToJson: true)
  const factory SongAlbum({
    @Default('') @JsonKey(name: 'api_path') String apiPath,
    @Default('') @JsonKey(name: 'cover_art_url') String coverArtUrl,
    @Default('') @JsonKey(name: 'full_title') String fullTitle,
    @Default(0) int id,
    @Default('') String name,
    @Default('') String url,
    required ArtistMainInfo artist, // TODO @Default(ArtistMainInfo())
  }) = _SongAlbum;

  factory SongAlbum.fromJson(Map<String, dynamic> json) =>
      _$SongAlbumFromJson(json);
}

@freezed
class Media with _$Media {
  const factory Media({
    required String provider,
    required String type,
    required String url,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
class ArtistMainInfo with _$ArtistMainInfo {
  const factory ArtistMainInfo({
    @Default('') @JsonKey(name: 'api_path') String apiPath,
    @Default('') @JsonKey(name: 'header_image_url') String headerImageUrl,
    @Default(0) int id,
    @Default('') @JsonKey(name: 'image_url') String imageUrl,
    @Default('') String name,
    @Default('') String url,
  }) = _ArtistMainInfo;

  factory ArtistMainInfo.fromJson(Map<String, dynamic> json) =>
      _$ArtistMainInfoFromJson(json);
}
