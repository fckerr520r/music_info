import 'package:flutter/material.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;

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
      BuildContext context, double shrinkOffset, bool overlapsContent) {
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
                backgroundColor: style.Colors.backgroundColor,
                child: Hero(
                  tag: 'artist_avatar',
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(artistImageUrl),
                    radius: 80,
                  ),
                ),
              ),
            ),
          ),
        ),
        AppBar(
          elevation: 0,
          title: Text(artistName),
          backgroundColor:
              Theme.of(context).appBarTheme.backgroundColor!.withOpacity(
                    xd(shrinkOffset),
                  ),
        )
      ],
    );

    //     SliverAppBar(
    //   backgroundColor: style.Colors.backgroundColorLight,
    //   pinned: true,
    //   expandedHeight: 349,
    //   flexibleSpace: FlexibleSpaceBar(
    //     title: SizedBox(
    //       height: 350,
    //       width: MediaQuery.of(context).size.width,
    //       child: Stack(
    //         alignment: AlignmentDirectional.center,
    //         children: [
    //           Positioned(
    //             bottom: 40,
    //             child: CircleAvatar(
    //               radius: 53,
    //               backgroundColor: style.Colors.backgroundColor,
    //               child: Hero(
    //                 tag: 'artist_avatar',
    //                 child: CircleAvatar(
    //                   backgroundImage: NetworkImage(artistImageUrl),
    //                   radius: 50,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Positioned(
    //             bottom: 0,
    //             right: 13,
    //             left: 13,
    //             child: AutoSizeText(
    //               artistName,
    //               textAlign: TextAlign.center,
    //               maxFontSize: 20,
    //               minFontSize: 15,
    //               maxLines: 2,
    //               style: const TextStyle(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     centerTitle: true,
    //     background: Container(
    //       height: 330,
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //           image: NetworkImage(artistHeaderImageUrl),
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //       foregroundDecoration: BoxDecoration(
    //         gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: [
    //             style.Colors.backgroundColor.withOpacity(0),
    //             style.Colors.backgroundColor.withOpacity(0.2),
    //             style.Colors.backgroundColor.withOpacity(0.4),
    //             style.Colors.backgroundColor.withOpacity(0.8),
    //             style.Colors.backgroundColor.withOpacity(1),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

  double xd(double shrinkOffset) {
    final x = (shrinkOffset <= expandedHeight * 65 / 100
            ? 0
            : 0 +
                (shrinkOffset - (expandedHeight * 65 / 100)) /
                    (expandedHeight * 35 / 100))
        .toDouble();
    // print(x);
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
