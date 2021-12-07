import 'dart:convert';

import 'package:music_lyrics/service/models/genius_models/main_artist_info.dart';

BriefGeniusCountrySongsModel briefGeniusCountrySongsModelFromJson(String str) =>
    BriefGeniusCountrySongsModel.fromJson(json.decode(str));

String briefGeniusCountrySongsModelToJson(BriefGeniusCountrySongsModel data) =>
    json.encode(data.toJson());

class BriefGeniusCountrySongsModel {
  BriefGeniusCountrySongsModel({
    required this.countryCode,
    required this.countryName,
    required this.songs,
  });

  String countryCode;
  String countryName;
  List<BriefGeniusSongModel> songs;

  factory BriefGeniusCountrySongsModel.fromJson(Map<String, dynamic> json) =>
      BriefGeniusCountrySongsModel(
        countryCode: json['country_code'],
        countryName: json['country_name'],
        songs: List<BriefGeniusSongModel>.from(
            json['songs'].map((x) => BriefGeniusSongModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'country_code': countryCode,
        'country_name': countryName,
        'songs': List<dynamic>.from(songs.map((x) => x.toJson())),
      };
}

class BriefGeniusSongModel {
  BriefGeniusSongModel({
    required this.id,
    required this.title,
    required this.headerImageUrl,
    required this.primaryArtist,
  });

  int id;
  String title;
  String headerImageUrl;
  ArtistMainInfo primaryArtist;

  factory BriefGeniusSongModel.fromJson(Map<String, dynamic> json) =>
      BriefGeniusSongModel(
        id: json['id'],
        title: json['title'],
        headerImageUrl: json['headerImageUrl'],
        primaryArtist: ArtistMainInfo.fromJson(json['artist']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'headerImageUrl': headerImageUrl,
        'artist': primaryArtist.toJson(),
      };
}
