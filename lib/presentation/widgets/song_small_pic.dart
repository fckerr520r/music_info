import 'package:flutter/material.dart';
import 'package:music_lyrics/constants/specific_pic.dart';
import 'package:music_lyrics/presentation/screens/song_info.dart';

class SongSmallPicture extends StatelessWidget {
  const SongSmallPicture(
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: 70,
              child: Row(
                children: [
                  Container(
                    child: Image.network(
                      picUrl,
                      width: 100,
                      height: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.network(
                          SpecificPic.errorSongPicture,
                          width: 100,
                          height: 80,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: backgroundColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 13),
                        Text(
                          nameSong,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 9),
                        Text(
                          artistName,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
