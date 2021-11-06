// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'dart:convert';

SearchModel searchModelFromJson(String str) =>
    SearchModel.fromJson(json.decode(str));

String searchModelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  SearchModel({
    required this.message,
  });

  Message message;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        message: Message.fromJson(json["message"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message.toJson(),
      };
}

class Message {
  Message({
    required this.header,
    required this.body,
  });

  Header header;
  Body? body;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        header: Header.fromJson(json["header"]),
        body: json["body"] == null ? null : Body.fromJson(json["body"]),
      );

  Map<String, dynamic> toJson() => {
        "header": header.toJson(),
        "body": body == null ? null : body!.toJson(),
      };
}

class Body {
  Body({
    required this.trackList,
  });

  List<TrackList>? trackList;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        trackList: json["track_list"] == null
            ? null
            : List<TrackList>.from(
                json["track_list"].map((x) => TrackList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "track_list": trackList == null
            ? null
            : List<dynamic>.from(trackList!.map((x) => x.toJson())),
      };
}

class TrackList {
  TrackList({
    required this.track,
  });

  Track? track;

  factory TrackList.fromJson(Map<String, dynamic> json) => TrackList(
        track: json["track"] == null ? null : Track.fromJson(json["track"]),
      );

  Map<String, dynamic> toJson() => {
        "track": track == null ? null : track!.toJson(),
      };
}

class Track {
  Track({
    required this.trackId,
    required this.trackName,
    required this.hasLyrics,
    required this.artistName,
  });

  int ?trackId;
  String ?trackName;
  int ?hasLyrics;
  String ?artistName;

  factory Track.fromJson(Map<String, dynamic> json) => Track(
        trackId: json["track_id"] == null ? null : json["track_id"],
        trackName: json["track_name"] == null ? null : json["track_name"],
        hasLyrics: json["has_lyrics"] == null ? null : json["has_lyrics"],
        artistName: json["artist_name"] == null ? null : json["artist_name"],
      );

  Map<String, dynamic> toJson() => {
        "track_id": trackId == null ? null : trackId,
        "track_name": trackName == null ? null : trackName,
        "has_lyrics": hasLyrics == null ? null : hasLyrics,
        "artist_name": artistName == null ? null : artistName,
      };
}

class Header {
  Header({
    required this.statusCode,
    required this.executeTime,
    required this.available,
  });

  int statusCode;
  double executeTime;
  int available;

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        statusCode: json["status_code"] == null ? null : json["status_code"],
        executeTime: json["execute_time"] == null
            ? null
            : json["execute_time"].toDouble(),
        available: json["available"] == null ? null : json["available"],
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "execute_time": executeTime,
        "available": available,
      };
}
