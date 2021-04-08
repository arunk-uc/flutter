import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).platformBrightness;
    print(height);
    return Scaffold(
      appBar: AppBar(
        title: Text('media query example'),
      ),
    );
  }
}
