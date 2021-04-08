import 'package:flutter/material.dart';

class ConstraintsExample extends StatefulWidget {
  ConstraintsExample({Key key}) : super(key: key);

  @override
  _ConstraintsExampleState createState() => _ConstraintsExampleState();
}

class _ConstraintsExampleState extends State<ConstraintsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constrains Example'),
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
