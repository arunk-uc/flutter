import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeNative extends StatefulWidget {
  HomeNative({Key key}) : super(key: key);

  @override
  _HomeNativeState createState() => _HomeNativeState();
}

class _HomeNativeState extends State<HomeNative> {
  static const platform = const MethodChannel('sample.nativeChannel');
  String batteryLevel = 'Get Battery Level';

  Future<void> getBatteryLevel() async {
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      setState(() {
        batteryLevel = 'battery level is $result';
      });
    } catch (e) {
      print("error $e");
    }
  } //getBatteryLevel

  Future<void> getToast() async {
    try {
      final String result = await platform.invokeMethod('getToast');
      setState(() {
        batteryLevel = result;
      });
    } catch (e) {
      print('Error $e');
    }
  } //getToast

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Native Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getToast();
          },
          child: Text('$batteryLevel'),
        ),
      ),
    );
  } //build
} //class
