part of ui;

class TextLyrics extends StatelessWidget {
  const TextLyrics({Key? key, this.lyrics = '', required this.callback})
      : super(key: key);

  final String lyrics;
  final GestureTapCallback callback;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Lyrics: \n \n',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: lyrics,
          ),
          TextSpan(
            text: 'Tap to open full lyrics', // .tr
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                callback;
              },
          )
        ],
      ),
    );
  }
}
