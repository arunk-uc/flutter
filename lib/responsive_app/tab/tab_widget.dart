import 'package:flutter/material.dart';
import 'package:flutter_app/responsive_app/pages/chat_info.dart';
import 'package:flutter_app/responsive_app/pages/chat_users.dart';
import 'package:flutter_app/responsive_app/responsive_widget.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: ChatUsers(),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 3,
            child: ChatInfo(),
          )
        ],
      ),
    );
  }
}
