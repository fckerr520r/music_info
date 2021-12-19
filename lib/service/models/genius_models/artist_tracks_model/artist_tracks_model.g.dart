// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_tracks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistTracksModel _$$_ArtistTracksModelFromJson(Map<String, dynamic> json) =>
    _$_ArtistTracksModel(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      response: Response.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArtistTracksModelToJson(
        _$_ArtistTracksModel instance) =>
    <String, dynamic>{
      'meta': instance.meta.toJson(),
      'response': instance.response.toJson(),
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'status': instance.status,
    };

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      songs: (json['songs'] as List<dynamic>?)
          ?.map((e) => SongA.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'songs': instance.songs?.map((e) => e.toJson()).toList(),
    };

_$_SongA _$$_SongAFromJson(Map<String, dynamic> json) => _$_SongA(
      apiPath: json['api_path'] as String?,
      fullTitle: json['full_title'] as String?,
      id: json['id'] as int? ?? 0,
      songArtImageUrl: json['song_art_image_url'] as String,
      title: json['title'] as String,
      url: json['url'] as String?,
      primaryArtist: json['primary_artist'] == null
          ? const PrimaryArtist()
          : PrimaryArtist.fromJson(
              json['primary_artist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SongAToJson(_$_SongA instance) => <String, dynamic>{
      'api_path': instance.apiPath,
      'full_title': instance.fullTitle,
      'id': instance.id,
      'song_art_image_url': instance.songArtImageUrl,
      'title': instance.title,
      'url': instance.url,
      'primary_artist': instance.primaryArtist.toJson(),
    };

_$_PrimaryArtist _$$_PrimaryArtistFromJson(Map<String, dynamic> json) =>
    _$_PrimaryArtist(
      apiPath: json['api_path'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      imageUrl: json['image_url'] as String?,
      name: json['name'] as String? ?? '',
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_PrimaryArtistToJson(_$_PrimaryArtist instance) =>
    <String, dynamic>{
      'api_path': instance.apiPath,
      'id': instance.id,
      'image_url': instance.imageUrl,
      'name': instance.name,
      'url': instance.url,
    };
