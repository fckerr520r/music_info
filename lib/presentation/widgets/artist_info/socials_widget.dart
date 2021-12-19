import 'package:flutter/material.dart';
import 'package:music_lyrics/presentation/design/theme_colors.dart' as style;
import 'package:music_lyrics/service/models/genius_models/artist_social_data.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsWidget extends StatelessWidget {
  const SocialsWidget({
    Key? key,
    required this.socials,
  }) : super(key: key);
  final List<SocialData> socials;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: socials.map((data) => _SocialRow(data: data)).toList(),
      ),
    );
  }
}

class _SocialRow extends StatelessWidget {
  const _SocialRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  final SocialData data;

  void redirecion(String url) {
    launch(url);
  }

  @override
  Widget build(BuildContext context) {
    if (data.login != '') {
      return Padding(
        padding: const EdgeInsets.only(top: 10, right: 15),
        child: GestureDetector(
          onTap: () {
            redirecion(data.url);
          },
          child: Column(
            children: [
              Icon(
                data.icon,
                size: 35,
                color: style.Colors.letterMainColor,
              ),
              const SizedBox(height: 3),
            ],
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
