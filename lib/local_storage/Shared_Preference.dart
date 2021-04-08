import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceExample extends StatefulWidget {
  const SharedPreferenceExample({Key key}) : super(key: key);

  @override
  _SharedPreferenceExampleState createState() =>
      _SharedPreferenceExampleState();
}

class _SharedPreferenceExampleState extends State<SharedPreferenceExample> {
  //initialise shared pref
  var sharedPrefs;
  int number = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text('Shared preference example'),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Number',
                hintText: 'Enter a number'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              number = int.parse(value);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: new ElevatedButton(
                child: Text('SAVE'),
                onPressed: () {
                  saveNumber(number);
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: new ElevatedButton(
                child: Text('READ'),
                onPressed: () {
                  readNumber();
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: new ElevatedButton(
                child: Text('REMOVE'),
                onPressed: () {
                  removeNumber();
                }),
          ),
        ]),
      ),
    );
  }
}

void saveNumber(number) async {
  var sharedPrefs = await SharedPreferences.getInstance();
  sharedPrefs.setInt('number', number);
  print('Saved');
} //saveNumber

void readNumber() async {
  var sharedPrefs = await SharedPreferences.getInstance();
  int num = sharedPrefs.getInt('number') ?? 0;
  print('The number is $num');
} //readNumber

void removeNumber() async {
  var sharedPrefs = await SharedPreferences.getInstance();
  sharedPrefs.remove('number');
  print('Number removed');
} //removeNumber
