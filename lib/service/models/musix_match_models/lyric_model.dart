// To parse this JSON data, do
//
//     final lyricModel = lyricModelFromJson(jsonString);

import 'dart:convert';

LyricModel lyricModelFromJson(String str) => LyricModel.fromJson(json.decode(str));

String lyricModelToJson(LyricModel data) => json.encode(data.toJson());

class LyricModel {
    LyricModel({
        required this.message,
    });

   Message message;

  factory LyricModel.fromJson(Map<String, dynamic> json) => LyricModel(
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
    Body ?body;

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
        required this.lyrics,
    });

    Lyrics ?lyrics;

    factory Body.fromJson(Map<String, dynamic> json) => Body(
        lyrics: json["lyrics"] == null ? null : Lyrics.fromJson(json["lyrics"]),
    );

    Map<String, dynamic> toJson() => {
        "lyrics": lyrics == null ? null : lyrics!.toJson(),
    };
}

class Lyrics {
    Lyrics({
        required this.lyricsId,
        required this.lyricsBody,
        required this.lyricsCopyright,
    });

    int ?lyricsId;
    String ?lyricsBody;
    String ?lyricsCopyright;

    factory Lyrics.fromJson(Map<String, dynamic> json) => Lyrics(
        lyricsId: json["lyrics_id"] == null ? null : json["lyrics_id"],
        lyricsBody: json["lyrics_body"] == null ? null : json["lyrics_body"],
        lyricsCopyright: json["lyrics_copyright"] == null ? null : json["lyrics_copyright"],
    );

    Map<String, dynamic> toJson() => {
        "lyrics_id": lyricsId == null ? null : lyricsId,
        "lyrics_body": lyricsBody == null ? null : lyricsBody,
        "lyrics_copyright": lyricsCopyright == null ? null : lyricsCopyright,
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
        statusCode: json["status_code"] == null ? null : json["status_code"],
        executeTime: json["execute_time"] == null ? null : json["execute_time"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "execute_time": executeTime,
    };
}
