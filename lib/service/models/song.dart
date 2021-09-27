// To parse this JSON data, do
//
//     final trackChart = trackChartFromJson(jsonString);

import 'dart:convert';

TrackChart trackChartFromJson(String str) => TrackChart.fromJson(json.decode(str));

String trackChartToJson(TrackChart data) => json.encode(data.toJson());

class TrackChart {
    TrackChart({
        required this.meta,
        required this.response,
    });

    Meta meta;
    Response response;

    factory TrackChart.fromJson(Map<String, dynamic> json) => TrackChart(
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
        required this.song,
    });

    Song song;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        song: Song.fromJson(json["song"]),
    );

    Map<String, dynamic> toJson() => {
        "song": song.toJson(),
    };
}

class Song {
    Song({
        required this.apiPath,
        required this.appleMusicId,
        required this.appleMusicPlayerUrl,
        required this.featuredVideo,
        required this.fullTitle,
        required this.headerImageThumbnailUrl,
        required this.headerImageUrl,
        required this.id,
        required this.lyricsOwnerId,
        required this.lyricsPlaceholderReason,
        required this.lyricsState,
        required this.path,
        required this.recordingLocation,
        required this.releaseDate,
        // required this.releaseDateForDisplay,
        required this.songArtImageThumbnailUrl,
        required this.songArtImageUrl,
        required this.title,
        required this.titleWithFeatured,
        required this.url,
        // required this.songArtPrimaryColor,
        // required this.songArtSecondaryColor,
        // required this.songArtTextColor,
        required this.album,
        required this.lyricsMarkedCompleteBy,
        required this.media,
        required this.primaryArtist,
        required this.verifiedLyricsBy,


        required this.featuredArtists,
        required this.producerArtists,
        required this.writerArtists,
    });

    String apiPath;
    String appleMusicId;
    String appleMusicPlayerUrl;
    bool featuredVideo;
    String fullTitle;
    String headerImageThumbnailUrl;
    String headerImageUrl;
    int id;
    int lyricsOwnerId;
    dynamic lyricsPlaceholderReason;
    String lyricsState;
    String path;
    dynamic recordingLocation;
    DateTime ?releaseDate;
    // String releaseDateForDisplay;
    String songArtImageThumbnailUrl;
    String songArtImageUrl;
    String title;
    String titleWithFeatured;
    String url;
    // String songArtPrimaryColor;
    // String songArtSecondaryColor;
    // String songArtTextColor;
    SongAlbum ?album;
    dynamic lyricsMarkedCompleteBy;
    List<Media> media;
    Artist primaryArtist;
    List<dynamic> verifiedLyricsBy;


    List<Artist> ?featuredArtists;
    List<Artist> ?producerArtists;
    List<Artist> ?writerArtists;

    factory Song.fromJson(Map<String, dynamic> json) => Song(
        apiPath: json["api_path"], 
        appleMusicId: json["apple_music_id"] ?? "",
        appleMusicPlayerUrl: json["apple_music_player_url"] ?? "",
        featuredVideo: json["featured_video"],
        fullTitle: json["full_title"],
        headerImageThumbnailUrl: json["header_image_thumbnail_url"],
        headerImageUrl: json["header_image_url"],
        id: json["id"],
        lyricsOwnerId: json["lyrics_owner_id"],
        lyricsPlaceholderReason: json["lyrics_placeholder_reason"],
        lyricsState: json["lyrics_state"],
        path: json["path"],
        recordingLocation: json["recording_location"],
        releaseDate: (json["release_date"]) == null ? null : DateTime.parse(json["release_date"]),
        // releaseDateForDisplay: json["release_date_for_display"],
        songArtImageThumbnailUrl: json["song_art_image_thumbnail_url"],
        songArtImageUrl: json["song_art_image_url"],
        title: json["title"],
        titleWithFeatured: json["title_with_featured"],
        url: json["url"],
        // songArtPrimaryColor: json["song_art_primary_color"].replaceAll(RegExp(r'#'), ''), 
        // songArtSecondaryColor: json["song_art_secondary_color"],
        // songArtTextColor: json["song_art_text_color"],
        album: (json["album"]) == null ? null : SongAlbum.fromJson(json["album"]),
        lyricsMarkedCompleteBy: json["lyrics_marked_complete_by"],
        media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
        primaryArtist: Artist.fromJson(json["primary_artist"]),
        verifiedLyricsBy: List<dynamic>.from(json["verified_lyrics_by"].map((x) => x)),

        featuredArtists: (json["featured_artists"]) == null ? null : List<Artist>.from(json["featured_artists"].map((x) => Artist.fromJson(x))),
        producerArtists: (json["producer_artists"]) == null ? null : List<Artist>.from(json["producer_artists"].map((x) => Artist.fromJson(x))),
        writerArtists: (json["writer_artists"]) == null ? null : List<Artist>.from(json["writer_artists"].map((x) => Artist.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "api_path": apiPath,
        "apple_music_id": appleMusicId,
        "apple_music_player_url": appleMusicPlayerUrl,
        "featured_video": featuredVideo,
        "full_title": fullTitle,
        "header_image_thumbnail_url": headerImageThumbnailUrl,
        "header_image_url": headerImageUrl,
        "id": id,
        "lyrics_owner_id": lyricsOwnerId,
        "lyrics_placeholder_reason": lyricsPlaceholderReason,
        "lyrics_state": lyricsState,
        "path": path,
        "recording_location": recordingLocation,
        "release_date": "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        // "release_date_for_display": releaseDateForDisplay,
        "song_art_image_thumbnail_url": songArtImageThumbnailUrl,
        "song_art_image_url": songArtImageUrl,
        "title": title,
        "title_with_featured": titleWithFeatured,
        "url": url,
        // "song_art_primary_color": songArtPrimaryColor,
        // "song_art_secondary_color": songArtSecondaryColor,
        // "song_art_text_color": songArtTextColor,
        "album": album!.toJson(),
        "lyrics_marked_complete_by": lyricsMarkedCompleteBy,
        "media": List<dynamic>.from(media.map((x) => x.toJson())),
        "primary_artist": primaryArtist.toJson(),
        "verified_lyrics_by": List<dynamic>.from(verifiedLyricsBy.map((x) => x)),

        "featured_artists": List<dynamic>.from(featuredArtists!.map((x) => x)),
        "producer_artists": List<dynamic>.from(producerArtists!.map((x) => x.toJson())),
        "writer_artists": List<dynamic>.from(writerArtists!.map((x) => x.toJson())),
    };
}

class SongAlbum {
    SongAlbum({
        required this.apiPath,
        required this.coverArtUrl,
        required this.fullTitle,
        required this.id,
        required this.name,
        required this.url,
        required this.artist,
    });

    String apiPath;
    String coverArtUrl;
    String fullTitle;
    int id;
    String name;
    String url;
    Artist artist;

    factory SongAlbum.fromJson(Map<String, dynamic> json) => SongAlbum(
        apiPath: json["api_path"],
        coverArtUrl: json["cover_art_url"],
        fullTitle: json["full_title"],
        id: json["id"],
        name: json["name"],
        url: json["url"],
        artist: Artist.fromJson(json["artist"]),
    );

    Map<String, dynamic> toJson() => {
        "api_path": apiPath,
        "cover_art_url": coverArtUrl,
        "full_title": fullTitle,
        "id": id,
        "name": name,
        "url": url,
        "artist": artist.toJson(),
    };
}

class Artist {
    Artist({
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

    factory Artist.fromJson(Map<String, dynamic> json) => Artist(
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

class Media {
    Media({
        required this.provider,
        required this.start,
        required this.type,
        required this.url,
    });

    String provider;
    int ?start;
    String type;
    String url;

    factory Media.fromJson(Map<String, dynamic> json) => Media(
        provider: json["provider"],
        start: json["start"] == null ? null : json["start"],
        type: json["type"],
        url: json["url"],
        
    );

    Map<String, dynamic> toJson() => {
        "provider": provider,
        "start": start == null ? null : start,
        "type": type,
        "url": url,
    };
}
