import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User {
  final int id;
  final int userId;
  final String title;
  final String body;

  User({this.id, this.userId, this.title, this.body});
} //end of User class

class NetworkingExample extends StatefulWidget {
  NetworkingExample({Key key}) : super(key: key);

  @override
  _NetworkingExampleState createState() => _NetworkingExampleState();
}

class _NetworkingExampleState extends State<NetworkingExample> {
  List<User> users = [];

  void makingRequest() async {
    // String url = "https://jsonplaceholder.typicode.com/posts";
    // final response = await http.get(url);
    // var decodedData = jsonDecode(response.body);
    // for (var singleUser in decodedData) {
    //   User user = User(
    //       id: singleUser['id'],
    //       userId: singleUser['userId'],
    //       title: singleUser['title'],
    //       body: singleUser['body']);
    //   users.add(user);
    //   setState(() {});
    // }
  } //makingRequest

  void sendingData() async {
    // String url = "https://jsonplaceholder.typicode.com/posts";
    // final response = await http.post(url,
    //     headers: <String, String>{
    //       'Content-Type': 'application/json; charset=UTF-8',
    //     },
    //     body: jsonEncode(<String, String>{
    //       'title': 'Arun kenjila title',
    //       'body': 'Arun kenjila',
    //       'id': '101',
    //       'userId': '101'
    //     }));

    // print(response.statusCode);

    // if (response.statusCode == 201) {
    //   print('Sent to server');
    // } else {
    //   print('Error while sending the request');
    // }
  } //sendingData

  void updatingData() async {
    // User user = User(id: 101, userId: 2, title: 'Arun', body: 'Kenjila');

    // setState(() {
    //   users.add(user);
    // });

    // String url = "https://jsonplaceholder.typicode.com/posts/1";
    // final response = await http.put(url,
    //     headers: <String, String>{
    //       'Content-Type': 'application/json; charset=UTF-8',
    //     },
    //     body: jsonEncode(<String, String>{
    //       'title': 'Arun kenjila title',
    //     }));

    // print(response.statusCode);

    // if (response.statusCode == 200) {
    //   print('Sent to server');
    // } else {
    //   print('Error while sending the request');
    // }
  } //updatingData

  @override
  void initState() {
    super.initState();
    makingRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Networking Example'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            updatingData();
          },
          child: Icon(Icons.send),
        ),
        body:
            // FutureBuilder(
            //   future: makingRequest(),
            //   builder: (context, snapshot) {
            //     if (snapshot.data == null) {
            //       return Center(
            //           child: (CircularProgressIndicator(
            //         color: Colors.amber,
            //       )));
            //     } else {
            //       return (ListView.builder(
            //           itemCount: snapshot.data.length,
            //           itemBuilder: (context, index) => ListTile(
            //                 title: Text(snapshot.data[index].title),
            //                 subtitle: Text(snapshot.data[index].body),
            //                 contentPadding: EdgeInsets.all(20),
            //               )));
            //     }
            //   },
            // ),
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${users[index].title}'),
                    )));
  } //build
} //end class
