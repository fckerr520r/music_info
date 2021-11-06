import 'package:flutter/material.dart';

class TextLyric extends StatelessWidget {
  TextLyric({Key? key, required this.lyric}) : super(key: key);

  final String lyric;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Lyrics: \n \n',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: lyric,
              )
            ],
          ),
        ),
      ),
    );
  }
}
