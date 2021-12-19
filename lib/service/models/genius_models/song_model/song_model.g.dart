// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchGeniusModel _$$_SearchGeniusModelFromJson(Map<String, dynamic> json) =>
    _$_SearchGeniusModel(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      response: ResponseSong.fromJson(json['response'] as Map<String, dynamic>),
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

_$_ResponseSong _$$_ResponseSongFromJson(Map<String, dynamic> json) =>
    _$_ResponseSong(
      song: Song.fromJson(json['song'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseSongToJson(_$_ResponseSong instance) =>
    <String, dynamic>{
      'song': instance.song.toJson(),
    };

_$_Song _$$_SongFromJson(Map<String, dynamic> json) => _$_Song(
      apiPath: json['api_path'] as String? ?? '',
      appleMusicId: json['apple_music_id'] as String? ?? '',
      appleMusicPlayerUrl: json['apple_music_player_url'] as String? ?? '',
      featuredVideo: json['featured_video'] as bool? ?? false,
      fullTitle: json['full_title'] as String? ?? '',
      headerImageThumbnailUrl:
          json['header_image_thumbnail_url'] as String? ?? '',
      headerImageUrl: json['header_image_url'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      path: json['path'] as String? ?? '',
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String) ?? '',
      songArtImageThumbnailUrl:
          json['song_art_image_thumbnail_url'] as String? ?? '',
      songArtImageUrl: json['song_art_image_url'] as String? ?? '',
      title: json['title'] as String? ?? '',
      titleWithFeatured: json['title_with_featured'] as String? ?? '',
      url: json['url'] as String? ?? '',
      album: json['album'] == null
          ? null
          : SongAlbum.fromJson(json['album'] as Map<String, dynamic>),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      primaryArtist: ArtistMainInfo.fromJson(
          json['primary_artist'] as Map<String, dynamic>),
      verifiedLyricsBy:
          json['verified_lyrics_by'] as List<dynamic>? ?? const [],
      featuredArtists: (json['featured_artists'] as List<dynamic>?)
              ?.map((e) => ArtistMainInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      producerArtists: (json['producer_artists'] as List<dynamic>?)
              ?.map((e) => ArtistMainInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      writerArtists: (json['writer_artists'] as List<dynamic>?)
              ?.map((e) => ArtistMainInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lyric: json['lyric'] as String? ?? '',
    );

Map<String, dynamic> _$$_SongToJson(_$_Song instance) => <String, dynamic>{
      'api_path': instance.apiPath,
      'apple_music_id': instance.appleMusicId,
      'apple_music_player_url': instance.appleMusicPlayerUrl,
      'featured_video': instance.featuredVideo,
      'full_title': instance.fullTitle,
      'header_image_thumbnail_url': instance.headerImageThumbnailUrl,
      'header_image_url': instance.headerImageUrl,
      'id': instance.id,
      'path': instance.path,
      'release_date': instance.releaseDate?.toIso8601String(),
      'song_art_image_thumbnail_url': instance.songArtImageThumbnailUrl,
      'song_art_image_url': instance.songArtImageUrl,
      'title': instance.title,
      'title_with_featured': instance.titleWithFeatured,
      'url': instance.url,
      'album': instance.album?.toJson(),
      'media': instance.media?.map((e) => e.toJson()).toList(),
      'primary_artist': instance.primaryArtist.toJson(),
      'verified_lyrics_by': instance.verifiedLyricsBy,
      'featured_artists':
          instance.featuredArtists?.map((e) => e.toJson()).toList(),
      'producer_artists':
          instance.producerArtists?.map((e) => e.toJson()).toList(),
      'writer_artists': instance.writerArtists?.map((e) => e.toJson()).toList(),
      'lyric': instance.lyric,
    };

_$_SongAlbum _$$_SongAlbumFromJson(Map<String, dynamic> json) => _$_SongAlbum(
      apiPath: json['api_path'] as String? ?? '',
      coverArtUrl: json['cover_art_url'] as String? ?? '',
      fullTitle: json['full_title'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      url: json['url'] as String? ?? '',
      artist: ArtistMainInfo.fromJson(json['artist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SongAlbumToJson(_$_SongAlbum instance) =>
    <String, dynamic>{
      'api_path': instance.apiPath,
      'cover_art_url': instance.coverArtUrl,
      'full_title': instance.fullTitle,
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'artist': instance.artist.toJson(),
    };

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      provider: json['provider'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'provider': instance.provider,
      'type': instance.type,
      'url': instance.url,
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
