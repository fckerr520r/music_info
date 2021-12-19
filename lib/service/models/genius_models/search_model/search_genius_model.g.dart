// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_genius_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchGeniusModel _$$_SearchGeniusModelFromJson(Map<String, dynamic> json) =>
    _$_SearchGeniusModel(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      response: Response.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchGeniusModelToJson(
        _$_SearchGeniusModel instance) =>
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
      hits: (json['hits'] as List<dynamic>?)
          ?.map((e) => Hit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'hits': instance.hits?.map((e) => e.toJson()).toList(),
    };

_$_Hit _$$_HitFromJson(Map<String, dynamic> json) => _$_Hit(
      index: json['index'] as String,
      type: json['type'] as String,
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HitToJson(_$_Hit instance) => <String, dynamic>{
      'index': instance.index,
      'type': instance.type,
      'result': instance.result.toJson(),
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      apiPath: json['api_path'] as String? ?? '',
      fullTitle: json['full_title'] as String? ?? '',
      headerImageThumbnailUrl:
          json['header_image_thumbnail_url'] as String? ?? '',
      headerImageUrl: json['header_image_url'] as String? ?? '',
      id: json['id'] as int,
      lyricsState: json['lyrics_state'] as String? ?? '',
      songArtImageThumbnailUrl:
          json['song_art_image_thumbnail_url'] as String? ?? '',
      songArtImageUrl: json['song_art_image_url'] as String? ?? '',
      title: json['title'] as String? ?? '',
      titleWithFeatured: json['title_with_featured'] as String? ?? '',
      url: json['url'] as String? ?? '',
      primaryArtist: json['primary_artist'] == null
          ? const ArtistMainInfo()
          : ArtistMainInfo.fromJson(
              json['primary_artist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'api_path': instance.apiPath,
      'full_title': instance.fullTitle,
      'header_image_thumbnail_url': instance.headerImageThumbnailUrl,
      'header_image_url': instance.headerImageUrl,
      'id': instance.id,
      'lyrics_state': instance.lyricsState,
      'song_art_image_thumbnail_url': instance.songArtImageThumbnailUrl,
      'song_art_image_url': instance.songArtImageUrl,
      'title': instance.title,
      'title_with_featured': instance.titleWithFeatured,
      'url': instance.url,
      'primary_artist': instance.primaryArtist.toJson(),
    };

_$_ArtistMainInfo _$$_ArtistMainInfoFromJson(Map<String, dynamic> json) =>
    _$_ArtistMainInfo(
      apiPath: json['api_path'] as String? ?? '',
      headerImageUrl: json['header_image_url'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      imageUrl: json['image_url'] as String? ?? '',
      name: json['name'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$_ArtistMainInfoToJson(_$_ArtistMainInfo instance) =>
    <String, dynamic>{
      'api_path': instance.apiPath,
      'header_image_url': instance.headerImageUrl,
      'id': instance.id,
      'image_url': instance.imageUrl,
      'name': instance.name,
      'url': instance.url,
    };
