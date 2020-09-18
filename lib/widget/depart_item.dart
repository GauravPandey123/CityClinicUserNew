import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/AppRelatedText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DepartItem extends StatefulWidget {
  DepartItem();

  @override
  _DepartState createState() => _DepartState();
}

class _DepartState extends State<DepartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: 230,
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 3.0,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      child: SvgPicture.asset(twitter,  fit: BoxFit.cover),
                    ),
                    SizedBox(height: 7.0),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Speciality",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              ],
            )),
      ),
    );
  }
}
