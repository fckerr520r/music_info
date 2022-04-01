import 'package:flutter/material.dart';
import 'package:ui/ui.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('ss', (tester) async {
    final builder = GoldenBuilder.grid(columns: 2, widthToHeightRatio: 1)
      ..addScenario(
          'add',
          const SettingsButton(
            text: Text('add'),
            preficsIcon: Icon(Icons.add),
          ))
      ..addScenario(
          'remove',
          const SettingsButton(
            text: Text('remove'),
            preficsIcon: Icon(Icons.remove),
          ));
    await tester.pumpWidgetBuilder(builder.build());
    await screenMatchesGolden(tester, 'ss');
  });

  testGoldens('Example of testing a responsive layout', (tester) async {
    await tester.pumpWidgetBuilder(const TextLyrics());
    await multiScreenGolden(tester, 'weather_forecast');
  });
}
