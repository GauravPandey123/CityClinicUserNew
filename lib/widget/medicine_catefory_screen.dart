import 'package:city_clinic_user/ui/screens/findandbook/FinaandBookResult.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MedicineCategory extends StatefulWidget {
  @override
  _MedicineCategoryState createState() => _MedicineCategoryState();
}

class _MedicineCategoryState extends State<MedicineCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 3.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/images/offer_banner1.png",
              height: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FinaandBookResult()))
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  "Category #1",
                  style: TextStyle(
                    color: blueTextColor,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
