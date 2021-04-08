import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseExample extends StatefulWidget {
  FirebaseExample({Key key}) : super(key: key);

  @override
  _FirebaseExampleState createState() => _FirebaseExampleState();
}

class _FirebaseExampleState extends State<FirebaseExample> {
  bool isInitialised = false;
  bool isError = false;

  void initializeFlutterFire() async {
    print('calling');
    try {
      await Firebase.initializeApp();
      setState(() {
        isInitialised = true;
      });

      // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      //   print('message $message');
      // });
    } catch (e) {
      print("error $e");
      setState(() {
        isError = true;
      });
    }
  } //flutterFire

  @override
  void initState() {
    super.initState();
    initializeFlutterFire();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Firebase messaging'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Column(
          // children: [isInitialised ? Text('Initialised') : Text('not')],
          children: [Text('Hi')],
        ));
  }
}
