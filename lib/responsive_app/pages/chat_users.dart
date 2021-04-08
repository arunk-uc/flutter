import 'package:flutter/material.dart';
import 'package:flutter_app/responsive_app/home_responsive.dart';
import 'package:flutter_app/responsive_app/responsive_widget.dart';
import 'package:get/get.dart';

class ChatUsers extends StatelessWidget {
  ChatUsers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat users'),
      ),
      body: ListView(
        children: [
          SingleUser(name: 'Arun Kenjila'),
          SingleUser(name: 'Mark Zuck'),
          SingleUser(name: 'Steve Smith'),
          SingleUser(name: 'Virat'),
          SingleUser(name: 'Jacob'),
        ],
      ),
    );
  }
}

class SingleUser extends StatelessWidget {
  final String name;

  const SingleUser({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        ResponsiveWidget.isMobile(context)
            ? Get.toNamed('chatinfo', arguments: name)
            : {};
      },
      leading: Icon(
        Icons.person_outline,
        size: 35,
      ),
      title: Text('$name'),
      subtitle: Text('last message'),
    );
  }
}
