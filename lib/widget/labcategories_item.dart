import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabCatogriesItem extends StatefulWidget {
  @override
  _LabCatogriesItemState createState() => _LabCatogriesItemState();
}

class _LabCatogriesItemState extends State<LabCatogriesItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                ),
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
            Positioned(
              bottom: 10.0,
              right: 10.0,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Title"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
