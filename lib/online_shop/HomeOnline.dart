import 'package:flutter/material.dart';
import 'package:flutter_app/dev_tools/top_tab_navigation_bar.dart';

class HomeOnline extends StatelessWidget {
  const HomeOnline({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.grey,
          )
        ],
      ),
      body: TopTabNavigation(),
    );
  }
}
