import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dev_tools/side_menu.dart';

class NestedNavigationExample extends StatefulWidget {
  NestedNavigationExample({Key key}) : super(key: key);

  @override
  _NestedNavigationExampleState createState() =>
      _NestedNavigationExampleState();
}

class _NestedNavigationExampleState extends State<NestedNavigationExample>
    with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidemenu(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Nested Navigation'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.amber,
              child: TabBarView(
                controller: tabController,
                children: [
                  Text('Home'),
                  Text('Profile'),
                  Text('Settings'),
                  Text('Apps'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: TabBar(
                controller: tabController,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.transparent,
                isScrollable: false,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.person_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.settings_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.apps_outlined),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
