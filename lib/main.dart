import 'package:flutter/material.dart';
import 'package:flutter_app/app_state_example/views/home_page.dart';
import 'package:flutter_app/background_process/HomeBackground.dart';
import 'package:flutter_app/responsive_app/home_responsive.dart';
import 'package:flutter_app/responsive_app/pages/chat_info.dart';
import 'package:flutter_app/screen/life_cycle.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomeResponsive()),
        GetPage(name: "chatinfo", page: () => ChatInfo()),
      ],
    );
  }
}
