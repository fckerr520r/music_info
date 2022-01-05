part of ui;

class SongMediumPicture extends StatelessWidget {
  const SongMediumPicture({
    Key? key,
    required this.picUrl,
    required this.nameSong,
    required this.artistName,
    required this.songId,
    required this.widget,
  }) : super(key: key);
  final String picUrl;
  final String nameSong;
  final String artistName;
  final int songId;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ),
        );
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: 150,
            height: 140,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ThemeData().shadowColor,
                )
              ],
              image: DecorationImage(
                  image: NetworkImage(picUrl), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: 150,
            child: Text(
              nameSong,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 1),
          SizedBox(
            width: 150,
            child: Text(
              artistName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFFC8CBCC),
                fontSize: 12,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
