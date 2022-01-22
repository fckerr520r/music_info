part of ui;

class SongOwnerInfo extends StatelessWidget {
  const SongOwnerInfo(
      {Key? key,
      required this.onTap,
      required this.primaryArtistImage,
      required this.primaryArtistName})
      : super(key: key);

  final GestureTapCallback onTap;
  final ImageProvider primaryArtistImage;
  final Widget primaryArtistName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 5,
            child: CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.backgroundColor,
              child: CircleAvatar(
                radius: 57,
                backgroundColor: AppColors.backgroundColorLight,
                backgroundImage: primaryArtistImage,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 133,
            right: 13,
            child: DefaultTextStyle(
              child: primaryArtistName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
