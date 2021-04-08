import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dev_tools/side_menu.dart';
import 'package:flutter_app/ninja_id_card_project/list_example.dart';

class DrawerNavigationExample extends StatefulWidget {
  const DrawerNavigationExample({Key key}) : super(key: key);

  @override
  _DrawerNavigationExampleState createState() =>
      _DrawerNavigationExampleState();
}

class _DrawerNavigationExampleState extends State<DrawerNavigationExample> {
  int currentIndex = 0;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Drawer Example'),
        ),
        drawer: Sidemenu(),
        body: PageView(
          onPageChanged: (index) {
            currentIndex = index;
          },
          controller: pageController,
          children: [
            Text('home'),
            Text('Folder'),
            Text('Analysis'),
            Text('Settings'),
          ],
        ));
  }
} //class
