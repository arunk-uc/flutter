import 'package:flutter/material.dart';

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(48, 48, 46, 1),
        appBar: AppBar(
          title: Text('Home'),
          leading: Icon(Icons.menu_outlined),
          backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
          backgroundColor: Color.fromRGBO(30, 30, 30, 1),
          child: Icon(Icons.add_outlined),
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://mobcup.b-cdn.net/images/wt/e9cf9aa33c2f63577de9b96fdc423106.jpg'),
                  radius: 45,
                ),
                Divider(
                  height: 60,
                  color: Colors.black45,
                ),
                Text('NAME',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        letterSpacing: 2.0)),
                SizedBox(
                  height: 5.0,
                ),
                Text('Arun Kenjila $count',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      letterSpacing: 2.0,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Text('DESIGNATION',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        letterSpacing: 2.0)),
                SizedBox(
                  height: 5.0,
                ),
                Text('Programmer',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      letterSpacing: 2.0,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline,
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'programmer.arunkenjila@gmail.com',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    )
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Name',
                      hintText: 'Enter Your Name'),
                )
              ],
            ),
          ),
        ));
  }
}
