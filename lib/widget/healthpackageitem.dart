import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HealthPackageItem extends StatefulWidget {
  @override
  _HealthPackageItemState createState() => _HealthPackageItemState();
}

class _HealthPackageItemState extends State<HealthPackageItem> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              SvgPicture.asset(
                profile1Image,
                height: 100,
                width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0,6,10,6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Package Title",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: blackOneColor),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, cons ctetur adipiscing elit. Eleifend diam dictumst pellentesque in tellus.",
                      style:
                      TextStyle(fontSize: 12.0, color: normaltextColor),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Rs 100.",
                      style:
                      TextStyle(fontSize: 20.0, color: blueTextColor,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              )
            ],
          )),
    );

  }
}
