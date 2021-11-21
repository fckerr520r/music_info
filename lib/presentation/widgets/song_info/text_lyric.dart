import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TextLyric extends StatelessWidget {
  const TextLyric({Key? key, required this.lyrics, required this.lyricsUrl})
      : super(key: key);

  final String lyrics;
  final String lyricsUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              const TextSpan(
                text: 'Lyrics: \n \n',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: lyrics,
              ),
              TextSpan(
                text: 'Tap to open full lyrics'.tr,
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .selectedItemColor),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch(lyricsUrl);
                  },
              )
            ],
          ),
        ),
      ),
    );
  }
}
