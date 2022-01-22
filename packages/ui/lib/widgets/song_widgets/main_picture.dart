part of ui;

class MainPicture extends StatelessWidget {
  const MainPicture({
    Key? key,
    required this.songArtImageUrl,
    required this.title,
  }) : super(key: key);

  final String songArtImageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColors.backgroundColorLight,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(songArtImageUrl),
              fit: BoxFit.cover,
              onError: (context, stackTrace) {
                Image.network(
                  AssetsPicture.errorSongPicture,
                  width: 100,
                  height: 80,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.backgroundColor.withOpacity(0),
                AppColors.backgroundColor.withOpacity(0.5),
                AppColors.backgroundColor.withOpacity(1),
              ],
            ),
          ),
        ),
        Positioned(
          top: 330,
          left: 15,
          right: 15,
          child: DefaultTextStyle(
            child: AutoSizeText(
              title,
              maxFontSize: 30,
              minFontSize: 27,
            ),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
