import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class VideoBlock extends StatelessWidget {
  const VideoBlock({
    Key? key,
    required this.player,
  }) : super(key: key);

  final Widget player;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Divider(
                color: Colors.white,
                thickness: 0.7,
                endIndent: 5,
              ),
            ),
            Text(
              'Official video'.tr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: Divider(
                color: Colors.white,
                thickness: 0.7,
                indent: 5,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: player,
        ),
      ],
    );
  }
}