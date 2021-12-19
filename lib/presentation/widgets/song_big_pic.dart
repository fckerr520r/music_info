import 'package:flutter/material.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/presentation/screens/song_info.dart';

class SongBigPicture extends StatelessWidget {
  const SongBigPicture(
      {Key? key,
      required this.picUrl,
      required this.nameSong,
      required this.artistName,
      required this.songId})
      : super(key: key);
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
                  style.Colors.backgroundColor.withOpacity(0.1),
                  style.Colors.backgroundColor.withOpacity(0.4),
                ],
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: style.Colors.backgroundColor,
                )
              ],
              image: DecorationImage(
                image: NetworkImage(picUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: SizedBox(
                width: 204,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameSong,
                      style: const TextStyle(
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
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 20)
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
