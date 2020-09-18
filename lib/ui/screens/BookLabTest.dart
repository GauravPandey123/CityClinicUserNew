import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookLabTest extends StatefulWidget {
  @override
  _BookLabTestState createState() => _BookLabTestState();
}

class _BookLabTestState extends State<BookLabTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Consultation Request",
                      style:
                          new TextStyle(fontSize: 18.0, color: blueTextColor)),
                  SvgPicture.asset(editProfileImage, height: 40, width: 40),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Type : ",
                    style: TextStyle(fontSize: 16.0, color: normaltextColor),
                  ),
                  Text(
                    "Lab Visit",
                    style: TextStyle(fontSize: 16.0, color: blackOneColor),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Date : ",
                    style: TextStyle(fontSize: 16.0, color: normaltextColor),
                  ),
                  Text(
                    "7 july 2001",
                    style: TextStyle(fontSize: 16.0, color: blackOneColor),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Date : ",
                    style: TextStyle(fontSize: 16.0, color: normaltextColor),
                  ),
                  Text(
                    "10:00 AM to 6:00 AM",
                    style: TextStyle(fontSize: 16.0, color: blackOneColor),
                  )
                ],
              ),
              SizedBox(height: 10),
              Divider(height: 1,color: dividerColor)
            ],
          ),
        ),
      ),
    );
  }
}
