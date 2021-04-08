import 'package:flutter/material.dart';
import 'package:flutter_app/app_state_example/controllers/home_page_controller.dart';
import 'package:get/get.dart';
import './other_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX exmaple'),
      ),
      floatingActionButton: FloatingActionButton(
          child: (Icon(Icons.add)), onPressed: homePageController.increment),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Obx(
            () => Text(
              '${homePageController.count.value}',
              style: TextStyle(fontSize: 30),
            ),
          )),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('LifeCycle');
              },
              child: Text('Go to other'))
        ],
      ),
    );
  }
}
