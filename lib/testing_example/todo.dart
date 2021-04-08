import 'package:flutter/material.dart';

class ToDoExample extends StatefulWidget {
  ToDoExample({Key key}) : super(key: key);

  @override
  _ToDoExampleState createState() => _ToDoExampleState();
}

class _ToDoExampleState extends State<ToDoExample> {
  List<String> todos = ["Arun"];
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(todos.length);
    return Scaffold(
        appBar: AppBar(
          title: Text('To Do'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            addItem();
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: 'Enter An Item',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  addItem();
                },
                child: Text('Add'),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: Key('$index'),
                        onDismissed: (direction) => todos.removeAt(index),
                        child: ListTile(
                          title: Text(todos[index]),
                        ),
                        background: Container(
                          color: Colors.red,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }

  void addItem() {
    setState(() {
      todos.add(textEditingController.text);
      textEditingController.clear();
    });
    print('Item added');
  } //addItem

} //end class
