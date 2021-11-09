import 'package:flutter/material.dart';

class SongLinesInfo extends StatelessWidget {
  const SongLinesInfo({Key? key, required this.mainInfo, required this.line})
      : super(key: key);
  final String line;
  final String mainInfo;

  @override
  Widget build(BuildContext context) {
    if (mainInfo != '') {
      return Container(
        padding: const EdgeInsets.only(bottom: 5),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: Text(
                line,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              mainInfo,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
