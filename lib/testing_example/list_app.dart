import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListApp extends StatefulWidget {
  ListApp({Key key}) : super(key: key);

  @override
  _ListAppState createState() => _ListAppState();
}

class _ListAppState extends State<ListApp> {
  var items = List<String>.generate(1000, (index) => 'Item $index');

  void getData() async {
    // final response =
    //     await http.get("https://jsonplaceholder.typicode.com/users");
    // final decodedData = jsonDecode(response.body);
    // print('data $decodedData');
    // debugPrint('Hello Print From ');
    // developer.log('Log me', name: 'Arun Kenjila');
  } //getData

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Example'),
      ),
      body: ListView.builder(
          key: Key('listview_key'),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(
                  '${items[index]}',
                  key: Key('item_${index}_text'),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            );
          }),
    );
  }
}
