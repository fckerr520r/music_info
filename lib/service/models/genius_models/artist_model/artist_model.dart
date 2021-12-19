import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_model.freezed.dart';
part 'artist_model.g.dart';

ArtistModel artistFromJson(String str) => ArtistModel.fromJson(json.decode(str));

String artistToJson(ArtistModel data) => json.encode(data.toJson());

List<ArtistFullInfo> artistListFromJson(String str) =>
    List<ArtistFullInfo>.from(json.decode(str).map((x) => ArtistFullInfo.fromJson(x)));

String artistListToJson(List<ArtistFullInfo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ArtistModel with _$ArtistModel {
  @JsonSerializable(explicitToJson: true)
  const factory ArtistModel({
    required Meta meta,
    required ResponseArtist response
  }) = _ArtistModel;

  factory ArtistModel.fromJson(Map<String, dynamic> json) => _$ArtistModelFromJson(json);
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
class ResponseArtist with _$ResponseArtist {
  @JsonSerializable(explicitToJson: true)
  const factory ResponseArtist({
    required ArtistFullInfo artist,
  }) = _ResponseArtist;
  factory ResponseArtist.fromJson(Map<String, dynamic> json) =>
      _$ResponseArtistFromJson(json);
}

@freezed
class ArtistFullInfo with _$ArtistFullInfo {
  const factory ArtistFullInfo({
    @Default([]) @JsonKey(name: 'alternate_names') List<String> alternateNames,
    @Default('') @JsonKey(name: 'api_path') String apiPath,
    @Default('') @JsonKey(name: 'facebook_name') String facebookName,
    @Default('') @JsonKey(name: 'header_image_url') String headerImageUrl,
    required int id,
    @Default('') @JsonKey(name: 'image_url') String imageUrl,
    @Default('') @JsonKey(name: 'instagram_name') String instagramName,
    required String name,
    @Default('') @JsonKey(name: 'twitter_name') String twitterName,
    @Default('') String url,
  }) = _ArtistFullInfo;

  factory ArtistFullInfo.fromJson(Map<String, dynamic> json) =>
      _$ArtistFullInfoFromJson(json);
}
