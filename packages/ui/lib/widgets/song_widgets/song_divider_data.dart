part of ui;

class SongDividerData extends StatelessWidget {
  const SongDividerData({
    Key? key,
    required this.releaseDate,
  }) : super(key: key);

  final Widget releaseDate;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.white,
          thickness: 0.7,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 5),
          child: DefaultTextStyle(
            child: releaseDate,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.start,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}