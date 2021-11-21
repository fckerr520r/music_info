import 'dart:convert';

ArtistTracks artistTracksFromJson(String str) => ArtistTracks.fromJson(json.decode(str));

String artistTracksToJson(ArtistTracks data) => json.encode(data.toJson());

class ArtistTracks {
    ArtistTracks({
        required this.meta,
        required this.response,
    });

    Meta meta;
    Response response;

    factory ArtistTracks.fromJson(Map<String, dynamic> json) => ArtistTracks(
        meta: Meta.fromJson(json['meta']),
        response: Response.fromJson(json['response']),
    );

    Map<String, dynamic> toJson() => {
        'meta': meta.toJson(),
        'response': response.toJson(),
    };
}

class Meta {
    Meta({
        required this.status,
    });

    int status;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        status: json['status'],
    );

    Map<String, dynamic> toJson() => {
        'status': status,
    };
}

class Response {
    Response({
        required this.songs,
    });

    List<SongA> songs;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        songs: List<SongA>.from(json['songs'].map((x) => SongA.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        'songs': List<dynamic>.from(songs.map((x) => x.toJson())),
    };
}

class SongA {
    SongA({
        required this.apiPath,
        required this.fullTitle,
        required this.id,
        required this.songArtImageThumbnailUrl,
        required this.songArtImageUrl,
        required this.title,
        required this.url,
        required this.primaryArtist,
    });

    String apiPath;
    String fullTitle;
    int id;
    String songArtImageThumbnailUrl;
    String songArtImageUrl;
    String title;
    String url;
    PrimaryArtist primaryArtist;

    factory SongA.fromJson(Map<String, dynamic> json) => SongA(
        apiPath: json['api_path'],
        fullTitle: json['full_title'],
        id: json['id'],
        songArtImageThumbnailUrl: json['song_art_image_thumbnail_url'],
        songArtImageUrl: json['song_art_image_url'],
        title: json['title'],
        url: json['url'],
        primaryArtist: PrimaryArtist.fromJson(json['primary_artist']),
    );

    Map<String, dynamic> toJson() => {
        'api_path': apiPath,
        'full_title': fullTitle,
        'id': id,
        'song_art_image_thumbnail_url': songArtImageThumbnailUrl,
        'song_art_image_url': songArtImageUrl,
        'title': title,
        'url': url,
        'primary_artist': primaryArtist.toJson(),
    };
}

class PrimaryArtist {
    PrimaryArtist({
        required this.apiPath,
        required this.id,
        required this.imageUrl,
        required this.name,
        required this.url,
    });

    String apiPath;
    int id;
    String imageUrl;
    String name;
    String url;

    factory PrimaryArtist.fromJson(Map<String, dynamic> json) => PrimaryArtist(
        apiPath: json['api_path'],
        id: json['id'],
        imageUrl: json['image_url'],
        name: json['name'],
        url: json['url'],
    );

    Map<String, dynamic> toJson() => {
        'api_path': apiPath,
        'id': id,
        'image_url': imageUrl,
        'name': name,
        'url': url,
    };
}
