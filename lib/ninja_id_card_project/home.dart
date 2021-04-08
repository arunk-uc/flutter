import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.menu_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$textValue'),
            TextField(
              obscureText: false,
              onChanged: (value) {
                textValue = value;
              },
              decoration: InputDecoration(
                labelText: 'Its kenjila',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            )
            // Text('Home Screen'),
            // Center(
            //   child: RaisedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/location');
            //     },
            //     child: Text('Go to Location'),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
