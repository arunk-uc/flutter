import 'package:flutter/material.dart';

class AsynchronousExample extends StatefulWidget {
  @override
  _AsynchronousExampleState createState() => _AsynchronousExampleState();
}

class _AsynchronousExampleState extends State<AsynchronousExample> {
  void getData() async {
    Future.delayed(Duration(seconds: 5), () {
      print('Hello from delayed');
    });

    print('Hello Aysnc');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hello..');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Async Example'),
      ),
      body: Container(child: Text('Helloo')),
    );
  }
}
