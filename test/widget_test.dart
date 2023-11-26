// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:assesment_flutter_barra_part3/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Your Test Description', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Your actual UI may have different text values.
    // Update the find.text values accordingly.
    expect(find.text('YourInitialText'), findsOneWidget);
    expect(find.text('YourUpdatedText'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that your UI has updated.
    expect(find.text('YourInitialText'), findsNothing);
    expect(find.text('YourUpdatedText'), findsOneWidget);
  });
}
