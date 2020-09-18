import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NationalityDropDown extends StatefulWidget {
  _NationalityState createState() => _NationalityState();
}

class _NationalityState extends State<NationalityDropDown> {
  String dropdownValue = 'India';
  List<String> spinnerItems = [
    'India',
    'Pakistan',
    'China',
    'Russia',
    'Turkey'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: <Widget>[
          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.red, fontSize: 18),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String data) {
              setState(() {
                dropdownValue = data;
              });
            },
            items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Text('Selected Item = ' + '$dropdownValue',
              style: TextStyle(fontSize: 22, color: Colors.black)),
        ]),
      ),
    );
  }
}
