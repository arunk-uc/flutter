import 'package:flutter/material.dart';
import 'package:flutter_app/dev_tools/dio_example.dart';
import 'package:flutter_app/dev_tools/url_launcher_example.dart';
import 'package:flutter_app/dev_tools/video_player_example.dart';
import 'package:flutter_app/ninja_id_card_project/list_example.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(top: 50),
        constraints: BoxConstraints(
          maxHeight: double.infinity,
          maxWidth: 200,
        ),
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text('Home'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return ListExample();
                    }),
                  );
                }),
            ListTile(
                leading: Icon(Icons.folder_outlined),
                title: Text('Folders'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return DioExample();
                    }),
                  );
                }),
            ListTile(
                leading: Icon(Icons.analytics_outlined),
                title: Text('Analysis'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return VideoPlayerExample();
                    }),
                  );
                }),
            ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text('Settings'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return UrlLauncherExample();
                    }),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
