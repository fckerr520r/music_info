// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LyricsModel _$$_LyricsModelFromJson(Map<String, dynamic> json) =>
    _$_LyricsModel(
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LyricsModelToJson(_$_LyricsModel instance) =>
    <String, dynamic>{
      'message': instance.message.toJson(),
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
      lyrics: json['lyrics'] == null
          ? null
          : Lyrics.fromJson(json['lyrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BodyToJson(_$_Body instance) => <String, dynamic>{
      'lyrics': instance.lyrics?.toJson(),
    };

_$_Lyrics _$$_LyricsFromJson(Map<String, dynamic> json) => _$_Lyrics(
      lyricsId: json['lyrics_id'] as int? ?? 0,
      lyricsBody: json['lyrics_body'] as String?,
    );

Map<String, dynamic> _$$_LyricsToJson(_$_Lyrics instance) => <String, dynamic>{
      'lyrics_id': instance.lyricsId,
      'lyrics_body': instance.lyricsBody,
    };
