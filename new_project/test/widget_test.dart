// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:new_project/main.dart';

void main() {
  testWidgets('PlaceholderScreen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title and test button exist.
    expect(find.text('Placeholder Screen'), findsNWidgets(2));
    expect(find.text('Test Stuff'), findsOneWidget);

    // Tap the 'Test Stuff' button and trigger a frame.
    await tester.tap(find.text('Test Stuff'));
    await tester.pump();

    // Verify counter incremented.
    expect(find.text('Test button tapped: 1 time(s)'), findsOneWidget);
  });
}
