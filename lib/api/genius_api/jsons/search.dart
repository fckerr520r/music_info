import 'dart:convert';

GetSearch getSearchFromJson(String str) => GetSearch.fromJson(json.decode(str));

String getSearchToJson(GetSearch data) => json.encode(data.toJson());

class GetSearch {
    GetSearch({
        required this.meta,
        required this.response,
    });

    Meta meta;
    Response response;

    factory GetSearch.fromJson(Map<String, dynamic> json) => GetSearch(
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
        required this.hits,
    });

    List<Hit> hits;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "hits": List<dynamic>.from(hits.map((x) => x.toJson())),
    };
}

class Hit {
    Hit({
        required this.index,
        required this.type,
        required this.result,
    });

    String index;
    String type;
    Result result;

    factory Hit.fromJson(Map<String, dynamic> json) => Hit(
        index: json["index"],
        type: json["type"],
        result: Result.fromJson(json["result"]),
    );

    Map<String, dynamic> toJson() => {
        "index": index,
        "type": type,
        "result": result.toJson(),
    };
}

class Result {
    Result({
        required this.annotationCount,
        required this.apiPath,
        required this.fullTitle,
        required this.headerImageThumbnailUrl,
        required this.headerImageUrl,
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
        required this.songArtSecondaryColor,
        required this.songArtTextColor,
        required this.primaryArtist,
    });

    int annotationCount;
    String apiPath;
    String fullTitle;
    String headerImageThumbnailUrl;
    String headerImageUrl;
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
    String songArtSecondaryColor;
    String songArtTextColor;
    PrimaryArtist primaryArtist;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        annotationCount: json["annotation_count"],
        apiPath: json["api_path"],
        fullTitle: json["full_title"],
        headerImageThumbnailUrl: json["header_image_thumbnail_url"],
        headerImageUrl: json["header_image_url"],
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
        songArtSecondaryColor: json["song_art_secondary_color"],
        songArtTextColor: json["song_art_text_color"],
        primaryArtist: PrimaryArtist.fromJson(json["primary_artist"]),
    );

    Map<String, dynamic> toJson() => {
        "annotation_count": annotationCount,
        "api_path": apiPath,
        "full_title": fullTitle,
        "header_image_thumbnail_url": headerImageThumbnailUrl,
        "header_image_url": headerImageUrl,
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
        "song_art_secondary_color": songArtSecondaryColor,
        "song_art_text_color": songArtTextColor,
        "primary_artist": primaryArtist.toJson(),
    };
}

class PrimaryArtist {
    PrimaryArtist({
        required this.apiPath,
        required this.headerImageUrl,
        required this.id,
        required this.imageUrl,
        required this.isMemeVerified,
        required this.isVerified,
        required this.name,
        required this.url,
    });

    String apiPath;
    String headerImageUrl;
    int id;
    String imageUrl;
    bool isMemeVerified;
    bool isVerified;
    String name;
    String url;

    factory PrimaryArtist.fromJson(Map<String, dynamic> json) => PrimaryArtist(
        apiPath: json["api_path"],
        headerImageUrl: json["header_image_url"],
        id: json["id"],
        imageUrl: json["image_url"],
        isMemeVerified: json["is_meme_verified"],
        isVerified: json["is_verified"],
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "api_path": apiPath,
        "header_image_url": headerImageUrl,
        "id": id,
        "image_url": imageUrl,
        "is_meme_verified": isMemeVerified,
        "is_verified": isVerified,
        "name": name,
        "url": url,
    };
}
