import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final String name;
  final int age;

  const UserDetails({Key key, this.name, this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Container(
        child: Center(child: Text('I am $name and my age is $age ')),
      ),
    );
  }
}
