part of ui;

class SongLinesInfo extends StatelessWidget {
  const SongLinesInfo({Key? key, required this.mainInfo, required this.line})
      : super(key: key);

  final Widget line;
  final Widget mainInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 1),
          child: DefaultTextStyle(
            child: line,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DefaultTextStyle(
          child: mainInfo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
