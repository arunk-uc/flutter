import 'package:flutter/material.dart';

class LifeCycleExample extends StatefulWidget {
  LifeCycleExample({Key key}) : super(key: key);

  @override
  _LifeCycleExampleState createState() => _LifeCycleExampleState();
}

class _LifeCycleExampleState extends State<LifeCycleExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('app initialised');
  }

  @override
  void dispose() {
    debugPrint('App Disposed');
    print('app disposed');
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('app built');
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Cylce'),
      ),
    );
  }
}
