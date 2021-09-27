// To parse this JSON data, do
//
//     final artist = artistFromJson(jsonString);

import 'dart:convert';

Artists artistFromJson(String str) => Artists.fromJson(json.decode(str));

String artistToJson(Artists data) => json.encode(data.toJson());

class Artists {
    Artists({
        required this.meta,
        required this.response,
    });

    Meta meta;
    Response response;

    factory Artists.fromJson(Map<String, dynamic> json) => Artists(
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
        required this.artist,
    });

    ArtistClass artist;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        artist: ArtistClass.fromJson(json["artist"]),
    );

    Map<String, dynamic> toJson() => {
        "artist": artist.toJson(),
    };
}

class ArtistClass {
    ArtistClass({
        required this.alternateNames,
        required this.apiPath,
        required this.facebookName,
        required this.followersCount,
        required this.headerImageUrl,
        required this.id,
        required this.imageUrl,
        required this.instagramName,
        required this.isMemeVerified,
        required this.isVerified,
        required this.name,
        required this.translationArtist,
        required this.twitterName,
        required this.url,
    });

    List<String> alternateNames;
    String apiPath;
    String facebookName;
    int followersCount;
    String headerImageUrl;
    int id;
    String imageUrl;
    String instagramName;
    bool isMemeVerified;
    bool isVerified;
    String name;
    bool translationArtist;
    dynamic twitterName;
    String url;

    factory ArtistClass.fromJson(Map<String, dynamic> json) => ArtistClass(
        alternateNames: List<String>.from(json["alternate_names"].map((x) => x)),
        apiPath: json["api_path"],
        facebookName: json["facebook_name"] ?? "",
        followersCount: json["followers_count"],
        headerImageUrl: json["header_image_url"],
        id: json["id"],
        imageUrl: json["image_url"],
        instagramName: json["instagram_name"] ?? "",
        isMemeVerified: json["is_meme_verified"],
        isVerified: json["is_verified"],
        name: json["name"],
        translationArtist: json["translation_artist"],
        twitterName: json["twitter_name"] ?? "",
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "alternate_names": List<dynamic>.from(alternateNames.map((x) => x)),
        "api_path": apiPath,
        "facebook_name": facebookName,
        "followers_count": followersCount,
        "header_image_url": headerImageUrl,
        "id": id,
        "image_url": imageUrl,
        "instagram_name": instagramName,
        "is_meme_verified": isMemeVerified,
        "is_verified": isVerified,
        "name": name,
        "translation_artist": translationArtist,
        "twitter_name": twitterName,
        "url": url,
    };
}
