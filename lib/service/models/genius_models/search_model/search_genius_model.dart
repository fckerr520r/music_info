import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_genius_model.freezed.dart';
part 'search_genius_model.g.dart';

SearchGeniusModel getSearchFromJson(String str) =>
    SearchGeniusModel.fromJson(json.decode(str));

String getSearchToJson(SearchGeniusModel data) => json.encode(data.toJson());

@freezed
class SearchGeniusModel with _$SearchGeniusModel {
  @JsonSerializable(explicitToJson: true)
  const factory SearchGeniusModel({
    required Meta meta,
    required Response response,
  }) = _SearchGeniusModel;

  factory SearchGeniusModel.fromJson(Map<String, dynamic> json) =>
      _$SearchGeniusModelFromJson(json);
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
    List<Hit>? hits,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class Hit with _$Hit {
  @JsonSerializable(explicitToJson: true)
  const factory Hit({
    required String index,
    required String type,
    required Result result,
  }) = _Hit;

  factory Hit.fromJson(Map<String, dynamic> json) => _$HitFromJson(json);
}

@freezed
class Result with _$Result {
  @JsonSerializable(explicitToJson: true)
  const factory Result({
    @Default('') @JsonKey(name: 'api_path') String apiPath,
    @Default('') @JsonKey(name: 'full_title') String fullTitle,
    @Default('')
    @JsonKey(name: 'header_image_thumbnail_url')
        String headerImageThumbnailUrl,
    @Default('') @JsonKey(name: 'header_image_url') String headerImageUrl,
    required int id,
    @Default('') @JsonKey(name: 'lyrics_state') String lyricsState,
    @Default('')
    @JsonKey(name: 'song_art_image_thumbnail_url')
        String songArtImageThumbnailUrl,
    @Default('') @JsonKey(name: 'song_art_image_url') String songArtImageUrl,
    @Default('') String title,
    @Default('') @JsonKey(name: 'title_with_featured') String titleWithFeatured,
    @Default('') String url,
    @JsonKey(name: 'primary_artist') @Default(ArtistMainInfo()) ArtistMainInfo primaryArtist,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ArtistMainInfo with _$ArtistMainInfo {
  const factory ArtistMainInfo({
    @Default('') @JsonKey(name: 'api_path') String apiPath,
    @Default('') @JsonKey(name: 'header_image_url') String headerImageUrl,
    @Default(0) int id,
    @Default('') @JsonKey(name: 'image_url') String imageUrl,
    @Default('')  String name,
    @Default('') String url,
  }) = _ArtistMainInfo;

  factory ArtistMainInfo.fromJson(Map<String, dynamic> json) =>
      _$ArtistMainInfoFromJson(json);
}
