import 'package:flutter/material.dart';
import 'package:flutter_app/responsive_app/pages/chat_users.dart';

class MobileWidget extends StatelessWidget {
  const MobileWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatUsers(),
    );
  }
}
