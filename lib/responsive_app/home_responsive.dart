import 'package:flutter/material.dart';
import 'package:flutter_app/responsive_app/mobile/mobile_widget.dart';
import 'package:flutter_app/responsive_app/responsive_widget.dart';
import 'package:flutter_app/responsive_app/tab/tab_widget.dart';

class HomeResponsive extends StatefulWidget {
  HomeResponsive({Key key}) : super(key: key);

  @override
  _HomeResponsiveState createState() => _HomeResponsiveState();
}

class _HomeResponsiveState extends State<HomeResponsive> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ResponsiveWidget(
          mobile: MobileWidget(),
          tab: TabWidget(),
        ),
      ),
    );
  }
}
