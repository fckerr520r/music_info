import 'package:flutter/material.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/screens/basic/song_info.dart';

class SongMediumPicture extends StatelessWidget {
  const SongMediumPicture(
      {Key? key,
      required this.backgroundColor,
      required this.picUrl,
      required this.nameSong,
      required this.artistName,
      required this.songId})
      : super(key: key);
  final Color backgroundColor;
  final String picUrl;
  final String nameSong;
  final String artistName;
  final int songId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SongInfo(songId: songId),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 150,
            height: 140,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: backgroundColor,
                )
              ],
              image: DecorationImage(
                  image: NetworkImage(picUrl), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          SizedBox(
            width: 150,
            child: Text(
              nameSong,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 1,
          ),
          SizedBox(
            width: 150,
            child: Text(
              artistName,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Style.Colors.letterMainColor,
                fontSize: 12,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
