import 'package:flutter/material.dart';

class UsersView extends StatelessWidget {
  final _users = [
    'Arun',
    'john',
    'Jacob',
    'Mark',
  ];

  final ValueChanged myValue;
  UsersView({Key key, this.myValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.builder(
          itemCount: _users.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 1,
              child: ListTile(
                title: Text(_users[index]),
                onTap: () {
                  Navigator.pushNamed(context, '/location');
                },
              ),
            );
          }),
    );
  }
}
