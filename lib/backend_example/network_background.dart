//background task not implemented

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkingInBackground extends StatefulWidget {
  NetworkingInBackground({Key key}) : super(key: key);

  @override
  _NetworkingInBackgroundState createState() => _NetworkingInBackgroundState();
}

class _NetworkingInBackgroundState extends State<NetworkingInBackground> {
  List<Photo> myPhotos = [];

  void makingRequest() async {
    // final String url = 'https://jsonplaceholder.typicode.com/photos';
    // final response = await http.get(url);
    // var decodedData = jsonDecode(response.body);

    // for (var singlePhoto in decodedData) {
    //   Photo photo = Photo(
    //     id: singlePhoto['id'],
    //     title: singlePhoto['title'],
    //     thumbnailUrl: singlePhoto['thumbnailUrl'],
    //   );
    //   myPhotos.add(photo);
    // }
    // print(myPhotos);
  } //makingRequest

  @override
  void initState() {
    super.initState();
    makingRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Network in background'),
        ),
        body: ListView.builder(
            itemCount: myPhotos.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 100,
                      child: Image.network('${myPhotos[index].thumbnailUrl}')),
                )));
  }
} //end class

class Photo {
  final int id;
  final String title;
  final String thumbnailUrl;

  Photo({this.id, this.title, this.thumbnailUrl});
} //photo
