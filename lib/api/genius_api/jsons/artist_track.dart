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
        meta: Meta.fromJson(json["meta"]),
        response: Response.fromJson(json["response"]),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "response": response.toJson(),
    };
}

class Meta {
    Meta({
        required this.status,
    });

    int status;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
    };
}

class Response {
    Response({
        required this.songs,
    });

    List<SongA> songs;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        songs: List<SongA>.from(json["songs"].map((x) => SongA.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "songs": List<dynamic>.from(songs.map((x) => x.toJson())),
    };
}

class SongA {
    SongA({
        required this.apiPath,
        required this.fullTitle,
        required this.id,
        required this.lyricsOwnerId,
        required this.lyricsState,
        required this.path,
        required this.songArtImageThumbnailUrl,
        required this.songArtImageUrl,
        required this.title,
        required this.titleWithFeatured,
        required this.url,
        required this.songArtPrimaryColor,
        required this.songArtTextColor,
        required this.primaryArtist,
    });

    String apiPath;
    String fullTitle;
    int id;
    int lyricsOwnerId;
    String lyricsState;
    String path;
    String songArtImageThumbnailUrl;
    String songArtImageUrl;
    String title;
    String titleWithFeatured;
    String url;
    String songArtPrimaryColor;
    String songArtTextColor;
    PrimaryArtist primaryArtist;

    factory SongA.fromJson(Map<String, dynamic> json) => SongA(
        apiPath: json["api_path"],
        fullTitle: json["full_title"],
        id: json["id"],
        lyricsOwnerId: json["lyrics_owner_id"],
        lyricsState: json["lyrics_state"],
        path: json["path"],
        songArtImageThumbnailUrl: json["song_art_image_thumbnail_url"],
        songArtImageUrl: json["song_art_image_url"],
        title: json["title"],
        titleWithFeatured: json["title_with_featured"],
        url: json["url"],
        songArtPrimaryColor: json["song_art_primary_color"],
        songArtTextColor: json["song_art_text_color"],
        primaryArtist: PrimaryArtist.fromJson(json["primary_artist"]),
    );

    Map<String, dynamic> toJson() => {
        "api_path": apiPath,
        "full_title": fullTitle,
        "id": id,
        "lyrics_owner_id": lyricsOwnerId,
        "lyrics_state": lyricsState,
        "path": path,
        "song_art_image_thumbnail_url": songArtImageThumbnailUrl,
        "song_art_image_url": songArtImageUrl,
        "title": title,
        "title_with_featured": titleWithFeatured,
        "url": url,
        "song_art_primary_color": songArtPrimaryColor,
        "song_art_text_color": songArtTextColor,
        "primary_artist": primaryArtist.toJson(),
    };
}

class PrimaryArtist {
    PrimaryArtist({
        required this.apiPath,
        required this.id,
        required this.imageUrl,
        required this.isMemeVerified,
        required this.isVerified,
        required this.name,
        required this.url,
    });

    String apiPath;
    int id;
    String imageUrl;
    bool isMemeVerified;
    bool isVerified;
    String name;
    String url;

    factory PrimaryArtist.fromJson(Map<String, dynamic> json) => PrimaryArtist(
        apiPath: json["api_path"],
        id: json["id"],
        imageUrl: json["image_url"],
        isMemeVerified: json["is_meme_verified"],
        isVerified: json["is_verified"],
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "api_path": apiPath,
        "id": id,
        "image_url": imageUrl,
        "is_meme_verified": isMemeVerified,
        "is_verified": isVerified,
        "name": name,
        "url": url,
    };
}
