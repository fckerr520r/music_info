part of ui;

class SongBigPicture extends StatefulWidget {
  const SongBigPicture({
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
  State<SongBigPicture> createState() => _SongBigPictureState();
}

class _SongBigPictureState extends State<SongBigPicture> {
  var image;
  @override
  void initState() {
    image = NetworkImage(widget.picUrl);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget.widget,
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: 220,
            height: 250,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ThemeData().shadowColor.withOpacity(0.1),
                  ThemeData().shadowColor.withOpacity(0.4),
                ],
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFF2b2b2b),
                )
              ],
              image: DecorationImage(
                image: image,
                onError: (exception, stackTrace) {
                  image = const AssetImage(
                    AssetsPic.errorSongPicture,
                  ); // TODO error picture
                },
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: SizedBox(
                width: 204,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nameSong,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.artistName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
