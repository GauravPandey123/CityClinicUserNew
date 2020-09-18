import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookLabTestScreen extends StatefulWidget {
  @override
  _BookLabTestScreenState createState() => _BookLabTestScreenState();
}

class _BookLabTestScreenState extends State<BookLabTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SvgPicture.asset(labSvg, height: 40, width: 40),
                  Column(
                    children: <Widget>[
                      Text(
                        "Test Name",
                        style: TextStyle(fontSize: 16.0, color: blackTextColor),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Test also known as TEST NAME",
                        style: TextStyle(fontSize: 16.0, color: blueTextColor),
                      ),
                      SizedBox(height: 10),
                      Divider(height: 2, color: dividerColor),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              Text("Select Visit Type",
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Divider(height: 2, color: dividerColor),
              SizedBox(height: 10),
              Text("Visit Type",
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Divider(height: 2, color: dividerColor),
              Form(
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Email"),
                ),
              ),
              SizedBox(height: 10),
              Divider(height: 2, color: dividerColor),
              Form(
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Email"),
                ),
              ),
              SizedBox(height: 10),
              Divider(height: 2, color: dividerColor),
            ],
          ),
        ),
      ),
    );
  }
}
