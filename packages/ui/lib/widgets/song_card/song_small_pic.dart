part of ui;

class SongSmallPicture extends StatelessWidget {
  const SongSmallPicture({
    Key? key,
    required this.pictureUrl,
    required this.nameSong,
    required this.artistName,
    required this.songId,
    required this.widget,
  }) : super(key: key);
  final String pictureUrl;
  final Widget nameSong;
  final Widget artistName;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Stack(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: 70,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: ThemeData().shadowColor,
                        ),
                      ],
                    ),
                    child: Image.network(
                      pictureUrl,
                      width: 100,
                      height: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          AssetsPicture.errorSongPicture,
                          width: 100,
                          height: 80,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 13),
                        DefaultTextStyle(
                          child: nameSong,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 9),
                        DefaultTextStyle(
                          child: artistName,
                          style: const TextStyle(
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
