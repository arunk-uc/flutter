import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_app/ninja_id_card_project/list_example.dart';

class BottomnavigationBarExample extends StatefulWidget {
  BottomnavigationBarExample({Key key}) : super(key: key);

  @override
  _BottomnavigationBarExampleState createState() =>
      _BottomnavigationBarExampleState();
}

class _BottomnavigationBarExampleState
    extends State<BottomnavigationBarExample> {
  int currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom navigation'),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() => currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.folder_outlined),
            title: Text('Folders'),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.analytics_outlined),
            title: Text('Analytics'),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.wallet_giftcard_outlined),
            title: Text('Orders'),
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings_outlined),
            title: Text('Settings'),
          ),
        ],
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => currentIndex = index);
          },
          children: <Widget>[
            Container(
              color: Colors.blueGrey,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
