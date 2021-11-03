import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:music_lyrics/presentation/screens/artist_info.dart';
import 'package:music_lyrics/service/models/song.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as Style;

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
              artistId: song.primaryArtist!.id,
              artistImageUrl: song.primaryArtist!.imageUrl,
              artistName: song.primaryArtist!.name,
            ),
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 5,
            child: Container(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Style.Colors.backgroundColor,
                child: CircleAvatar(
                  radius: 57,
                  backgroundColor: Style.Colors.backgroundColorLight,
                  backgroundImage: NetworkImage(song.primaryArtist!.imageUrl),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 133,
            right: 13,
            child: AutoSizeText(
              song.primaryArtist!.name,
              style: TextStyle(
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
