import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
            TextButton(onPressed: () {}, child: Text('flat buttton')),
            ElevatedButton(
              onPressed: () {
                print('pressed');
              },
              onLongPress: () {
                print('on long pressed');
              },
              child: Text('Raised Button'),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.home_outlined),
            ),
            IconButton(
                icon: Icon(Icons.volume_up),
                iconSize: 50,
                color: Colors.brown,
                tooltip: "Iam Kenjil",
                onPressed: () {
                  print('Hello');
                }),

            InkWell(
              splashColor: Colors.amber,
              highlightColor: Colors.blue,
              child: Text('Inkwell Button'),
              onTap: () {},
            ),

            OutlinedButton(child: Text('Outline Button'), onPressed: () {})

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
