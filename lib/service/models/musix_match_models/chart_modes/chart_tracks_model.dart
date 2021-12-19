import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_tracks_model.freezed.dart';
part 'chart_tracks_model.g.dart';

@freezed
class ChartTracks with _$ChartTracks {
  @JsonSerializable(explicitToJson: true)
  const factory ChartTracks({
    required Message message,
  }) = _ChartTracks;

  factory ChartTracks.fromJson(Map<String, dynamic> json) =>
      _$ChartTracksFromJson(json);
}

@freezed
class Message with _$Message {
  @JsonSerializable(explicitToJson: true)
  const factory Message({
    required Header header,
    Body? body,
  }) = _Message;

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
    @JsonKey(name: 'track_list')
    @Default(<TrackList>[])
        List<TrackList> trackList,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class TrackList with _$TrackList {
  @JsonSerializable(explicitToJson: true)
  const factory TrackList({
    Track? track,
  }) = _TrackList;

  factory TrackList.fromJson(Map<String, dynamic> json) =>
      _$TrackListFromJson(json);
}

@freezed
class Track with _$Track {
  const factory Track({
    @JsonKey(name: 'track_id') @Default(0) int trackId,
    @JsonKey(name: 'track_name') String? trackName,
    @JsonKey(name: 'commontrack_id') @Default(0) int commontrackId,
    @JsonKey(name: 'album_id') @Default(0) int albumId,
    @JsonKey(name: 'artist_id') @Default(0) int artistId,
    @JsonKey(name: 'artist_name') @Default('') String artistName
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
