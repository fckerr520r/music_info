import 'dart:convert';

import 'package:music_lyrics/service/models/genius_models/main_artist_info.dart';

BriefGeniusSongModel briefSongModelFromJson(String str) =>
    BriefGeniusSongModel.fromJson(json.decode(str));

String briefSongModelToJson(BriefGeniusSongModel data) =>
    json.encode(data.toJson());

List<BriefGeniusSongModel> briefSongModelListFromJson(String str) =>
    List<BriefGeniusSongModel>.from(
        json.decode(str).map((x) => BriefGeniusSongModel.fromJson(x)));

String briefSongModelListToJson(List<BriefGeniusSongModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
