import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:music_lyrics/constants/specific_pic.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;

class MainPic extends StatelessWidget {
  const MainPic({
    Key? key,
    required this.songArtImageUrl,
    required this.title,
  }) : super(key: key);

  final String songArtImageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: style.Colors.backgroundColorLight,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(songArtImageUrl),
              fit: BoxFit.cover,
              onError: (context, stackTrace) {
                Image.network(
                  SpecificPic.errorSongPicture,
                  width: 100,
                  height: 80,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                style.Colors.backgroundColor.withOpacity(0),
                style.Colors.backgroundColor.withOpacity(0.5),
                style.Colors.backgroundColor.withOpacity(1),
              ],
            ),
          ),
        ),
        Positioned(
          top: 330,
          left: 15,
          right: 15,
          child: AutoSizeText(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxFontSize: 30,
            minFontSize: 27,
            textAlign: TextAlign.start,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
