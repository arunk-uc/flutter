import 'package:flutter/material.dart';
import 'package:flutter_app/testing_example/samle_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app/main.dart';

void main() {
  testWidgets('testing to do widget screen', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MyApp());

    // Enter 'hi' into the TextField.
    await widgetTester.enterText(find.byType(TextField), 'hi');
    await widgetTester.pump(Duration(milliseconds: 100));
    // await widgetTester.tap(find.byType(ElevatedButton));
    await widgetTester.pump();
    //expect(find.text('hi'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
    await widgetTester.drag(find.byType(Dismissible), Offset(500.0, 0.0));

    // Build the widget until the dismiss animation ends.
    //await widgetTester.pumpAndSettle();

    //expect(find.text('hi'), findsNothing);
  });
}
