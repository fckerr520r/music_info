import 'package:flutter/material.dart';
import 'package:music_lyrics/design/theme_colors.dart' as Style;

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.Colors.backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.0,
              width: 25.0,
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.grey),
                strokeWidth: 4.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
