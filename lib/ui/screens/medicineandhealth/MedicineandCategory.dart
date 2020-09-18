import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MedicineandCategory extends StatefulWidget {
  @override
  _MedicineandCategoryState createState() => _MedicineandCategoryState();
}

class _MedicineandCategoryState extends State<MedicineandCategory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: dividerColor)),
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/city_clinic_image.png",
                fit: BoxFit.cover,
                height: 150,
                width: 120,
              ),
              SizedBox(height: 10),
              Text(
                "Medicine Name",
                style: TextStyle(fontSize: 18.0, color: blackOneColor),
              ),
              SizedBox(height: 6),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eleifend diam dictumst pellentesque in tellus.",
                style: TextStyle(fontSize: 14.0, color: normaltextColor),
              ),
              SizedBox(height: 6),
              Text(
                "Rs 750.",
                style: TextStyle(fontSize: 14.0, color: blueTextColor,fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
