import 'package:flutter/material.dart';

class TopTabNavigation extends StatefulWidget {
  TopTabNavigation({Key key}) : super(key: key);

  @override
  _TopTabNavigationState createState() => _TopTabNavigationState();
}

class _TopTabNavigationState extends State<TopTabNavigation>
    with TickerProviderStateMixin {
  List<String> myCategory = ["Home", "Order", "Sell", "Profile", "Settings"];
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  child: TabBar(
                    controller: tabController,
                    labelColor: Colors.red,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.home_outlined),
                      ),
                      Tab(
                        icon: Icon(Icons.person_outlined),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Text('Home'),
                      Text('Profile'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
