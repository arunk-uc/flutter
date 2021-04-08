import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

class HomeBackground extends StatefulWidget {
  HomeBackground({Key key}) : super(key: key);

  @override
  _HomeBackgroundState createState() => _HomeBackgroundState();
}

class _HomeBackgroundState extends State<HomeBackground> {
  @override
  void initState() {
    super.initState();
  } //init

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Process'),
      ),
    );
  }
}
