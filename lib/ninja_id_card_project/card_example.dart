import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      // backgroundColor: Color.fromRGBO(44, 43, 43, 1),
      appBar: AppBar(
        title: Text('Card Exmaple'),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        height: 100,
        width: double.infinity,
        child: Card(
          // color: Color.fromRGBO(30, 30, 30, 1),
          child: Center(child: Text('this is card')),
        ),
      ),
    ));
  }
}
