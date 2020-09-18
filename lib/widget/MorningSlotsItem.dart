import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MorningSlotsItem extends StatefulWidget {
  @override
  _MorningSlotsItemState createState() => _MorningSlotsItemState();
}

class _MorningSlotsItemState extends State<MorningSlotsItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: new Border.all(color: greyOneColor, width: 2.0),
          borderRadius: BorderRadius.circular(4)),
      child: Column(
        children: <Widget>[
          Text(
            "08:00 AM - 09:00 AM",
            style: TextStyle(fontSize: 16.0, color: normaltextColor),
          )
        ],
      ),
    );
  }
}
