import 'package:flutter/material.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;
import 'package:music_lyrics/screens/basic/song_info.dart';

class SongBigPicture extends StatelessWidget {
  const SongBigPicture(
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
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: 220,
            height: 250,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Style.Colors.backgroundColor.withOpacity(0.1),
                  Style.Colors.backgroundColor.withOpacity(0.4),
                ],
              ),
            ),
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
          Positioned(
            child: Padding(
              padding: EdgeInsets.only(right: 8, left: 8),
              child: SizedBox(
                width: 204,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameSong,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      artistName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
