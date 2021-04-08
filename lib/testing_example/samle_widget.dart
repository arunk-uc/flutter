import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String title;
  final String message;

  const MyWidget({Key key, @required this.title, @required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget test demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Test Demo'),
        ),
        body: Column(
          children: [Text(title), Text(message)],
        ),
      ),
    );
  }
}
