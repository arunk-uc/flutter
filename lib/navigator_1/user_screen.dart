import 'package:flutter/material.dart';
import 'package:flutter_app/navigator_1/user_detail_screen.dart';

class UserScreen extends StatelessWidget {
  final _users = [
    {'name': 'Arun kenjila', 'age': 22},
    {'name': 'Mark Zuck', 'age': 30},
    {'name': 'Virat', 'age': 35},
    {'name': 'Props', 'age': 21},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.builder(
          itemCount: _users.length,
          itemBuilder: (context, index) {
            final name = _users[index]['name'];
            return Card(
              elevation: 1,
              child: ListTile(
                title: Text(name),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => UserDetails(
                              name: _users[index]['name'],
                              age: _users[index]['age'])));
                },
              ),
            );
          }),
    );
  }
}
