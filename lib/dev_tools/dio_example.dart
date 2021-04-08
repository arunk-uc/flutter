import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dev_tools/side_menu.dart';

class DioExample extends StatefulWidget {
  DioExample({Key key}) : super(key: key);

  @override
  _DioExampleState createState() => _DioExampleState();
}

class _DioExampleState extends State<DioExample> {
  final dio = Dio();
  Response response;

  void getRequest() async {
    response = await dio.get('https://jsonplaceholder.typicode.com/posts/3');
    print(response.data.toString());

    // above code also can be written as
    response = await dio.get('https://jsonplaceholder.typicode.com/posts',
        queryParameters: {'id': 4});

    print(response.data.toString());
  } //get

  void getMultiplerequest() async {
    dynamic response = await Future.wait([
      dio.get('https://jsonplaceholder.typicode.com/posts/3'),
      dio.get('https://jsonplaceholder.typicode.com/posts/2')
    ]);
    print(response);
  } //getMul

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Dio Example'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        getMultiplerequest();
      }),
      body: Center(),
    );
  }
}
