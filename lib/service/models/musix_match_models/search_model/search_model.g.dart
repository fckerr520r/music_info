// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchModel _$$_SearchModelFromJson(Map<String, dynamic> json) =>
    _$_SearchModel(
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchModelToJson(_$_SearchModel instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      header: Header.fromJson(json['header'] as Map<String, dynamic>),
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'header': instance.header.toJson(),
      'body': instance.body?.toJson(),
    };

_$_Header _$$_HeaderFromJson(Map<String, dynamic> json) => _$_Header(
      statusCode: json['status_code'] as int,
      executeTime: (json['execute_time'] as num).toDouble(),
    );

Map<String, dynamic> _$$_HeaderToJson(_$_Header instance) => <String, dynamic>{
      'status_code': instance.statusCode,
      'execute_time': instance.executeTime,
    };

_$_Body _$$_BodyFromJson(Map<String, dynamic> json) => _$_Body(
      trackList: (json['track_list'] as List<dynamic>?)
              ?.map((e) => TrackList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TrackList>[],
    );

Map<String, dynamic> _$$_BodyToJson(_$_Body instance) => <String, dynamic>{
      'track_list': instance.trackList.map((e) => e.toJson()).toList(),
    };

_$_TrackList _$$_TrackListFromJson(Map<String, dynamic> json) => _$_TrackList(
      track: json['track'] == null
          ? null
          : Track.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrackListToJson(_$_TrackList instance) =>
    <String, dynamic>{
      'track': instance.track?.toJson(),
    };

_$_Track _$$_TrackFromJson(Map<String, dynamic> json) => _$_Track(
      trackId: json['track_id'] as int? ?? 0,
      trackName: json['track_name'] as String?,
      artistName: json['artist_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_TrackToJson(_$_Track instance) => <String, dynamic>{
      'track_id': instance.trackId,
      'track_name': instance.trackName,
      'artist_name': instance.artistName,
    };
