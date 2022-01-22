import 'dart:convert';

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
    required this.songId,
    required this.title,
    required this.songHeaderImageUrl,
    required this.artistId,
    required this.artistName,
  });

  int songId;
  String title;
  String songHeaderImageUrl;
  int artistId;
  String artistName;

  factory BriefGeniusSongModel.fromJson(Map<String, dynamic> json) =>
      BriefGeniusSongModel(
        songId: json['song_id'],
        title: json['title'],
        songHeaderImageUrl: json['header_image_url'],
        artistId: json['artist_id'],
        artistName: json['artist_name'],
      );

  Map<String, dynamic> toJson() => {
        'song_id': songId,
        'title': title,
        'header_image_url': songHeaderImageUrl,
        'artist_id': artistId,
        'artist_name': artistName,
      };
}