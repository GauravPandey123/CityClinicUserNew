import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCartItem extends StatefulWidget {
  @override
  _MyCartItemState createState() => _MyCartItemState();
}

class _MyCartItemState extends State<MyCartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(6.0),
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: blackOneColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              cartImage,
              height: 80,
              width: 80,
            ),
            Text(
              "Medicine Name Goes Her",
              style: TextStyle(fontSize: 16.0, color: blackOneColor),
            ),
            SvgPicture.asset(closeImage,width: 24,height: 24,)
          ],
        ),
      ),
    );
  }
}
