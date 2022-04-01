import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ui/ui.dart';

void main() {
  testWidgets('finds a Text widget in RedClicableText',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: RedClicableText(text: Text('smth data')),
        ),
      ),
    );

    expect(find.text('smth data'), findsOneWidget);
  });

  testWidgets('finds a Text and Icon widget in SettingsButton',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SettingsButton(
            text: Text('smth data'),
            preficsIcon: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
    expect(find.text('smth data'), findsOneWidget);
  });
}
