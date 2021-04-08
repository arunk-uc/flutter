import 'package:flutter/material.dart';
import 'package:flutter_app/dev_tools/side_menu.dart';

class ListExample extends StatefulWidget {
  @override
  _ListExampleState createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  final items = List<String>.generate(1000, (i) => "Item $i");

  Widget mycustomcard() {
    return (Card(
      child: Text('Hello World'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'List',
        ),
      ),
      drawer: Sidemenu(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          if (index % 2 == 0)
            return ListTile(
              title: Text(
                '${items[index]}',
              ),
            );
          return Image(
            image: NetworkImage(
                'https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png'),
            fit: BoxFit.contain,
          );
        },
      ),
    ));
  }
}
