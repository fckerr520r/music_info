
import 'dart:convert';

TrackAlbum trackAlbumFromJson(String str) => TrackAlbum.fromJson(json.decode(str));

String trackAlbumToJson(TrackAlbum data) => json.encode(data.toJson());

class TrackAlbum {
    TrackAlbum({
        required this.meta,
        required this.response,
    });

    Meta meta;
    Response response;

    factory TrackAlbum.fromJson(Map<String, dynamic> json) => TrackAlbum(
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
        required this.album,
    });

    Album album;

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        album: Album.fromJson(json['album']),
    );

    Map<String, dynamic> toJson() => {
        'album': album.toJson(),
    };
}

class Album {
    Album({
        required this.apiPath,
        required this.coverArtUrl,
        required this.fullTitle,
        required this.headerImageUrl,
        required this.id,
        required this.name,
        required this.releaseDate,
        required this.url,
        required this.songPageviews,
        required this.artist,
        required this.songPerformances,
    });

    String apiPath;
    String coverArtUrl;
    String fullTitle;
    String headerImageUrl;
    int id;
    String name;
    DateTime releaseDate;
    String url;
    int songPageviews;
    AlbumArtist artist;
    List<SongPerformance> songPerformances;

    factory Album.fromJson(Map<String, dynamic> json) => Album(
        apiPath: json['api_path'],
        coverArtUrl: json['cover_art_url'],
        fullTitle: json['full_title'],
        headerImageUrl: json['header_image_url'],
        id: json['id'],
        name: json['name'],
        releaseDate: DateTime.parse(json['release_date']),
        url: json['url'],
        songPageviews: json['song_pageviews'],
        artist: AlbumArtist.fromJson(json['artist']),
        songPerformances: List<SongPerformance>.from(json['song_performances'].map((x) => SongPerformance.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        'api_path': apiPath,
        'cover_art_url': coverArtUrl,
        'full_title': fullTitle,
        'header_image_url': headerImageUrl,
        'id': id,
        'name': name,
        'release_date': '${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}',
        'url': url,
        'song_pageviews': songPageviews,
        'artist': artist.toJson(),
        'song_performances': List<dynamic>.from(songPerformances.map((x) => x.toJson())),
    };
}

class AlbumArtist {
    AlbumArtist({
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

    factory AlbumArtist.fromJson(Map<String, dynamic> json) => AlbumArtist(
        apiPath: json['api_path'],
        headerImageUrl: json['header_image_url'],
        id: json['id'],
        imageUrl: json['image_url'],
        isMemeVerified: json['is_meme_verified'],
        isVerified: json['is_verified'],
        name: json['name'],
        url: json['url'],
    );

    Map<String, dynamic> toJson() => {
        'api_path': apiPath,
        'header_image_url': headerImageUrl,
        'id': id,
        'image_url': imageUrl,
        'is_meme_verified': isMemeVerified,
        'is_verified': isVerified,
        'name': name,
        'url': url,
    };
}

class SongPerformance {
    SongPerformance({
        required this.label,
        required this.artists,
    });

    String label;
    List<AlbumArtist> artists;

    factory SongPerformance.fromJson(Map<String, dynamic> json) => SongPerformance(
        label: json['label'],
        artists: List<AlbumArtist>.from(json['artists'].map((x) => AlbumArtist.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        'label': label,
        'artists': List<dynamic>.from(artists.map((x) => x.toJson())),
    };
}

// Map m ={
//   "meta": {
//     "status": 200
//   },
//   "response": {
//     "song": {
//       "annotation_count": 27,
//       "api_path": "/songs/2989266",
//       "apple_music_id": "1253106277",
//       "apple_music_player_url": "https://genius.com/songs/2989266/apple_music_player",
//       "featured_video": false,
//       "full_title": "Mask Off by Future",
//       "header_image_thumbnail_url": "https://images.genius.com/3bafe3cb099c7ee3dc020dced7bc1068.300x300x1.jpg",
//       "header_image_url": "https://images.genius.com/3bafe3cb099c7ee3dc020dced7bc1068.1000x1000x1.jpg",
//       "id": 2989266,
//       "lyrics_owner_id": 343483,
//       "lyrics_placeholder_reason": null,
//       "lyrics_state": "complete",
//       "path": "/Future-mask-off-lyrics",
//       "pyongs_count": 308,
//       "recording_location": "11th Street Recording Studios, Atlanta, Georgia",
//       "release_date": "2017-02-17",
//       "release_date_for_display": "February 17, 2017",
//       "song_art_image_thumbnail_url": "https://images.genius.com/130420153ed8ff63bab74dd483030456.300x300x1.png",
//       "song_art_image_url": "https://images.genius.com/130420153ed8ff63bab74dd483030456.1000x1000x1.png",
//       "title": "Mask Off",
//       "title_with_featured": "Mask Off",
//       "url": "https://genius.com/Future-mask-off-lyrics",
//       "song_art_primary_color": "#807e80",
//       "song_art_secondary_color": "#424142",
//       "song_art_text_color": "#fff",
//       "featured_artists": [],
//       "lyrics_marked_complete_by": null,
//       "primary_artist": {
//         "api_path": "/artists/2197",
//         "header_image_url": "https://images.genius.com/25d9e1faf213b2b3fdc1e88692b7f3bd.1000x1000x1.png",
//         "id": 2197,
//         "image_url": "https://images.genius.com/833e2b1d817f1320be26668c01b3be33.780x780x1.png",
//         "is_meme_verified": false,
//         "is_verified": true,
//         "name": "Future",
//         "url": "https://genius.com/artists/Future",
//         "iq": 4398
//       },
//       "producer_artists": [
//         {
//           "api_path": "/artists/33010",
//           "header_image_url": "https://images.genius.com/c9fbfb6fe6131617ac62da2f07dcc3fe.1000x429x1.jpg",
//           "id": 33010,
//           "image_url": "https://images.genius.com/6dac8c243ad4364953ad728ee31082e5.640x640x1.jpg",
//           "is_meme_verified": false,
//           "is_verified": false,
//           "name": "Metro Boomin",
//           "url": "https://genius.com/artists/Metro-boomin"
//         }
//       ],
//       "writer_artists": [
//         {
//           "api_path": "/artists/49470",
//           "header_image_url": "https://images.genius.com/7130fa2421767d64a74aacaee4592d4b.841x841x1.jpg",
//           "id": 49470,
//           "image_url": "https://images.genius.com/7130fa2421767d64a74aacaee4592d4b.841x841x1.jpg",
//           "is_meme_verified": false,
//           "is_verified": false,
//           "name": "DJ ESCO",
//           "url": "https://genius.com/artists/Dj-esco"
//         },
//         {
//           "api_path": "/artists/2197",
//           "header_image_url": "https://images.genius.com/25d9e1faf213b2b3fdc1e88692b7f3bd.1000x1000x1.png",
//           "id": 2197,
//           "image_url": "https://images.genius.com/833e2b1d817f1320be26668c01b3be33.780x780x1.png",
//           "is_meme_verified": false,
//           "is_verified": true,
//           "name": "Future",
//           "url": "https://genius.com/artists/Future",
//           "iq": 4398
//         },
//         {
//           "api_path": "/artists/1079946",
//           "header_image_url": "https://assets.genius.com/images/default_avatar_300.png?1629387721",
//           "id": 1079946,
//           "image_url": "https://assets.genius.com/images/default_avatar_300.png?1629387721",
//           "is_meme_verified": false,
//           "is_verified": false,
//           "name": "Tommy Butler",
//           "url": "https://genius.com/artists/Tommy-butler"
//         },
//         {
//           "api_path": "/artists/33010",
//           "header_image_url": "https://images.genius.com/c9fbfb6fe6131617ac62da2f07dcc3fe.1000x429x1.jpg",
//           "id": 33010,
//           "image_url": "https://images.genius.com/6dac8c243ad4364953ad728ee31082e5.640x640x1.jpg",
//           "is_meme_verified": false,
//           "is_verified": false,
//           "name": "Metro Boomin",
//           "url": "https://genius.com/artists/Metro-boomin"
//         }
//       ]
//     }
//   }
// };