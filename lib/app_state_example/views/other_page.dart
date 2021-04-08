import 'package:flutter/material.dart';
import 'package:flutter_app/app_state_example/controllers/home_page_controller.dart';
import 'package:get/get.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key key}) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('other screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: homePageController.decrement,
        child: Icon(Icons.remove),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Obx(() => Text(
                    '${homePageController.count.value}',
                    style: TextStyle(fontSize: 30),
                  )))
        ],
      ),
    );
  }
}
