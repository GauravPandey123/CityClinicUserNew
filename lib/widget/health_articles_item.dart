import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HealthArticles extends StatefulWidget {
  @override
  _HealthArticlesState createState() => _HealthArticlesState();
}

class _HealthArticlesState extends State<HealthArticles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.9,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height / 3.5,
                width: MediaQuery.of(context).size.width,


              )
            ],
          ),
        ),

      ),
    );
  }
}
