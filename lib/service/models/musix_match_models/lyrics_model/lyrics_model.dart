import 'package:freezed_annotation/freezed_annotation.dart';

part 'lyrics_model.freezed.dart';
part 'lyrics_model.g.dart';

@freezed
class LyricsModel with _$LyricsModel {
  @JsonSerializable(explicitToJson: true)
  const factory LyricsModel({
    required Message message,
  }) = _LyricsModel;

  factory LyricsModel.fromJson(Map<String, dynamic> json) =>
      _$LyricsModelFromJson(json);
}

@freezed
class Message with _$Message {
  @JsonSerializable(explicitToJson: true)
  const factory Message({
    required Header header,
    Body? body,
  }) = _Message;

  // const factory Message.error({
  //   required Header header,
  //   required List<dynamic> noFound,
  // }) = _MessageError; // TODO question object or list
  // https://api.musixmatch.com/ws/1.1/track.lyrics.get?track_id=226562358&apikey=ee12f2d17b7ecfc725a3eff87c24a559
  // https://api.musixmatch.com/ws/1.1/track.lyrics.get?track_id=199783650&apikey=ee12f2d17b7ecfc725a3eff87c24a559

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Header with _$Header {
  const factory Header({
    @JsonKey(name: 'status_code') required int statusCode,
    @JsonKey(name: 'execute_time') required double executeTime,
  }) = _Header;

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}

@freezed
class Body with _$Body {
  @JsonSerializable(explicitToJson: true)
  const factory Body({
    Lyrics? lyrics,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Lyrics with _$Lyrics {
  const factory Lyrics({
    @JsonKey(name: 'lyrics_id') @Default(0) int lyricsId,
    @JsonKey(name: 'lyrics_body') String? lyricsBody,
  }) = _Lyrics;

  factory Lyrics.fromJson(Map<String, dynamic> json) => _$LyricsFromJson(json);
}
