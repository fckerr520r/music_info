part of ui;

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({
    Key? key,
    required this.player,
    required this.text,
  }) : super(key: key);

  final Widget text;
  final Widget player;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              child: Divider(
                color: Colors.white,
                thickness: 0.7,
                endIndent: 5,
              ),
            ),
            DefaultTextStyle(
              child: text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Expanded(
              child: Divider(
                color: Colors.white,
                thickness: 0.7,
                indent: 5,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: player,
        ),
      ],
    );
  }
}
