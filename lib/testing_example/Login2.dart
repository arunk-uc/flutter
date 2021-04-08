//  this screen is used for widget testing

import 'package:flutter/material.dart';

class Login2Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Test Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text('T'),
            TextField(
              key: Key('tf'),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Hello World',
              ),
            )
          ],
        ),
      ),
    );
  }
}
