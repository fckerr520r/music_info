part of ui;

class CustomAppBar extends SliverPersistentHeaderDelegate {
  CustomAppBar({
    required this.artistImageUrl,
    required this.artistName,
    required this.artistHeaderImageUrl,
  });

  final String artistImageUrl;
  final String artistName;
  final String artistHeaderImageUrl;
  final expandedHeight = 450.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Image.network(
          artistHeaderImageUrl,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 2 - 82,
          child: Opacity(
            opacity: 1 - shrinkOffset / expandedHeight,
            child: Card(
              color: Colors.transparent,
              elevation: 0,
              child: CircleAvatar(
                radius: 82,
                backgroundColor: AppColors.backgroundColor,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(artistImageUrl),
                  radius: 80,
                ),
              ),
            ),
          ),
        ),
        AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          elevation: 0,
          shadowColor: Theme.of(context)
              .appBarTheme
              .backgroundColor!
              .withOpacity(xd(shrinkOffset)),
          title: Text(
            artistName,
            style: const TextStyle(
              shadows: <Shadow>[
                Shadow(
                  color: Colors.black,
                  blurRadius: 40,
                )
              ],
            ),
          ),
          backgroundColor:
              Theme.of(context).appBarTheme.backgroundColor!.withOpacity(
                    xd(shrinkOffset),
                  ),
        )
      ],
    );
  }

  double xd(double shrinkOffset) {
    final x = (shrinkOffset <= expandedHeight * 65 / 100
            ? 0
            : 0 +
                (shrinkOffset - (expandedHeight * 65 / 100)) /
                    (expandedHeight * 35 / 100))
        .toDouble();
    return x;
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
