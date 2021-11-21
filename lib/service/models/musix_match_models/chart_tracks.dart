// To parse this JSON data, do
//
//     final chartTracks = chartTracksFromJson(jsonString);

import 'dart:convert';

ChartTracks chartTracksFromJson(String str) =>
    ChartTracks.fromJson(json.decode(str));

String chartTracksToJson(ChartTracks data) => json.encode(data.toJson());

class ChartTracks {
  ChartTracks({
    required this.message,
  });

  Message message;

  factory ChartTracks.fromJson(Map<String, dynamic> json) => ChartTracks(
        message: Message.fromJson(json['message']),
      );

  Map<String, dynamic> toJson() => {
        'message': message.toJson(),
      };
}

class Message {
  Message({
    required this.header,
    this.body,
  });

  Header header;
  Body? body;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        header: Header.fromJson(json['header']),
        body: Body.fromJson(json['body']),
      );

  Map<String, dynamic> toJson() => {
        'header': header.toJson(),
        'body': body?.toJson(),
      };
}

class Body {
  Body({
    this.trackList = const [],
  });

  List<TrackList> trackList;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        trackList: List<TrackList>.from(
            json['track_list'].map((x) => TrackList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'track_list': List<dynamic>.from(trackList.map((x) => x.toJson())),
      };
}

class TrackList {
  TrackList({
    required this.track,
  });

  Track track;

  factory TrackList.fromJson(Map<String, dynamic> json) => TrackList(
        track: Track.fromJson(json['track']),
      );

  Map<String, dynamic> toJson() => {
        'track': track.toJson(),
      };
}

class Track {
  Track({
    required this.trackId,
    required this.trackName,
    this.commontrackId,
    this.hasLyrics,
    this.albumId,
    required this.artistId,
    required this.artistName,
  });

  int trackId;
  String trackName;
  int? commontrackId;
  int? hasLyrics;
  int? albumId;
  int artistId;
  String artistName;

  factory Track.fromJson(Map<String, dynamic> json) => Track(
        trackId: json['track_id'],
        trackName: json['track_name'],
        commontrackId: json['commontrack_id'],
        hasLyrics: json['has_lyrics'],
        albumId: json['album_id'],
        artistId: json['artist_id'],
        artistName: json['artist_name'],
      );

  Map<String, dynamic> toJson() => {
        'track_id': trackId,
        'track_name': trackName,
        'commontrack_id': commontrackId,
        'has_lyrics': hasLyrics,
        'album_id': albumId,
        'artist_id': artistId,
        'artist_name': artistName,
      };
}

class Header {
  Header({
    required this.statusCode,
    required this.executeTime,
  });

  int statusCode;
  double executeTime;

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        statusCode: json['status_code'],
        executeTime: json['execute_time'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'status_code': statusCode,
        'execute_time': executeTime,
      };
}
