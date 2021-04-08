import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dev Tools'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                print('Pickup button pressed.');
              },
              child: Text(
                'Pickup',
              ),
            ),
            // This widget is not shown on screen initially.
            VerticalDivider(
              width: 20.0,
              thickness: 5.0,
            ),
            ElevatedButton(
              onPressed: () {
                print('Delivery button pressed.');
              },
              child: Text(
                'Delivery',
              ),
            )
          ],
        ));
  }
}
