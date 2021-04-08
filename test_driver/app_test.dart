import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App Integration testing', () {
    final counterTextFinder = find.byValueKey('listview_key');
    // final incrementButtonFinder = find.byValueKey('increment');

    FlutterDriver flutterDriver;

    // connect the flutter driver before running any tests
    setUpAll(() async {
      flutterDriver = await FlutterDriver.connect();
    });

    // closing the drive after the tests
    tearDownAll(() async {
      if (flutterDriver != null) flutterDriver.close();
    });

    // test('starts at 0', () async {
    //   // Use the `driver.getText` method to verify the counter starts at 0.
    //   expect(await flutterDriver.getText(counterTextFinder), '0');
    // });

    // test('increments the counter', () async {
    //   // First, tap the button.
    //   await flutterDriver.tap(incrementButtonFinder);

    //   // Then, verify the counter text is incremented by 1.
    //   expect(await flutterDriver.getText(counterTextFinder), '1');
    // });

    test('verifies the list contains a specific item', () async {
      // Create two SerializableFinders and use these to locate specific
      // widgets displayed by the app. The names provided to the byValueKey
      // method correspond to the Keys provided to the widgets in step 1.
      final listFinder = find.byValueKey('listview_key');
      final itemFinder = find.byValueKey('item_50_text');

      final timeline = await flutterDriver.traceAction(() async {
        await flutterDriver.scrollUntilVisible(
          // Scroll through the list
          listFinder,
          // Until finding this item
          itemFinder,
          // To scroll down the list, provide a negative value to dyScroll.
          // Ensure that this value is a small enough increment to
          // scroll the item into view without potentially scrolling past it.
          //
          // To scroll through horizontal lists, provide a dxScroll
          // property instead.
          dyScroll: -300.0,
        );

        expect(
          await flutterDriver.getText(itemFinder),
          'Item 50',
        );
      }); //traceAction

      // convert the timeline into timeline summary
      final timelineSummary = new TimelineSummary.summarize(timeline);
      //saving into disk
      await timelineSummary.writeSummaryToFile('scrolling_summary',
          pretty: true);

      //writting entire timeline into disk in a json format which can be opened in chrome
      await timelineSummary.writeTimelineToFile('scrolling_timeline',
          pretty: true);
    }); //test
  }); //group
} //end
