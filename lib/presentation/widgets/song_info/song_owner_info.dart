import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/artist_info.dart';
import 'package:music_lyrics/service/models/genius_models/song.dart';

class SongOwnerInfo extends StatelessWidget {
  const SongOwnerInfo({Key? key, required this.song}) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArtistInfo(
              artistId: song.primaryArtist.id,
              artistImageUrl: song.primaryArtist.imageUrl,
              artistName: song.primaryArtist.name,
            ),
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 5,
            child: CircleAvatar(
              radius: 60,
              backgroundColor: style.Colors.backgroundColor,
              child: CircleAvatar(
                radius: 57,
                backgroundColor: style.Colors.backgroundColorLight,
                backgroundImage: NetworkImage(song.primaryArtist.imageUrl),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 133,
            right: 13,
            child: AutoSizeText(
              song.primaryArtist.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxFontSize: 20,
              minFontSize: 17,
              textAlign: TextAlign.start,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
