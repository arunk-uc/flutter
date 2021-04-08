import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatInfo extends StatelessWidget {
  ChatInfo({Key key}) : super(key: key);

  final name = Get.arguments == null ? 'Chat info' : Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name'),
      ),
    );
  }
}
