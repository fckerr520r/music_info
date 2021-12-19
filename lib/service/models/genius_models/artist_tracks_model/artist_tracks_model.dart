import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_tracks_model.g.dart';
part 'artist_tracks_model.freezed.dart';

@freezed
class ArtistTracksModel with _$ArtistTracksModel {
  @JsonSerializable(explicitToJson: true)
  const factory ArtistTracksModel({
    required Meta meta,
    required Response response,
  }) = _ArtistTracksModel;

  factory ArtistTracksModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistTracksModelFromJson(json);
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
class Response with _$Response {
  @JsonSerializable(explicitToJson: true)
  const factory Response({
    List<SongA>? songs,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class SongA with _$SongA {
  @JsonSerializable(explicitToJson: true)
  const factory SongA({
    @JsonKey(name: 'api_path') String? apiPath,
    @JsonKey(name: 'full_title') String? fullTitle,
    @Default(0) int id,
    @JsonKey(name: 'song_art_image_url') required String songArtImageUrl,
    required String title,
    String? url,
    @Default(PrimaryArtist()) @JsonKey(name: 'primary_artist') PrimaryArtist primaryArtist,
  }) = _SongA;

  factory SongA.fromJson(Map<String, dynamic> json) => _$SongAFromJson(json);
}

@freezed
class PrimaryArtist with _$PrimaryArtist {
  @JsonSerializable(explicitToJson: true)
  const factory PrimaryArtist({
    @Default('') @JsonKey(name: 'api_path') String apiPath,
    @Default(0) int id,
    @JsonKey(name: 'image_url') String? imageUrl,
    @Default('') String name,
    String? url,
  }) = _PrimaryArtist;

  factory PrimaryArtist.fromJson(Map<String, dynamic> json) =>
      _$PrimaryArtistFromJson(json);
}
