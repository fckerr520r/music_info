// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArtistModel _$$_ArtistModelFromJson(Map<String, dynamic> json) =>
    _$_ArtistModel(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      response:
          ResponseArtist.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArtistModelToJson(_$_ArtistModel instance) =>
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

_$_ResponseArtist _$$_ResponseArtistFromJson(Map<String, dynamic> json) =>
    _$_ResponseArtist(
      artist: ArtistFullInfo.fromJson(json['artist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseArtistToJson(_$_ResponseArtist instance) =>
    <String, dynamic>{
      'artist': instance.artist.toJson(),
    };

_$_ArtistFullInfo _$$_ArtistFullInfoFromJson(Map<String, dynamic> json) =>
    _$_ArtistFullInfo(
      alternateNames: (json['alternate_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      apiPath: json['api_path'] as String? ?? '',
      facebookName: json['facebook_name'] as String? ?? '',
      headerImageUrl: json['header_image_url'] as String? ?? '',
      id: json['id'] as int,
      imageUrl: json['image_url'] as String? ?? '',
      instagramName: json['instagram_name'] as String? ?? '',
      name: json['name'] as String,
      twitterName: json['twitter_name'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$_ArtistFullInfoToJson(_$_ArtistFullInfo instance) =>
    <String, dynamic>{
      'alternate_names': instance.alternateNames,
      'api_path': instance.apiPath,
      'facebook_name': instance.facebookName,
      'header_image_url': instance.headerImageUrl,
      'id': instance.id,
      'image_url': instance.imageUrl,
      'instagram_name': instance.instagramName,
      'name': instance.name,
      'twitter_name': instance.twitterName,
      'url': instance.url,
    };
