import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:intl/intl.dart';

class SongDividerData extends StatelessWidget {
  const SongDividerData({
    Key? key,
    required this.releaseDate,
  }) : super(key: key);

  final DateTime releaseDate;
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
          child: Text(
            'Release date'.tr + DateFormat.yMMMMd().format(releaseDate),
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
