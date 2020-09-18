import 'package:city_clinic_user/ui/screens/healthpackage/HealthPackageDetail.dart';
import 'package:city_clinic_user/widget/healthpackageitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthPackage extends StatefulWidget {
  @override
  _HealthPackageState createState() => _HealthPackageState();
}

class _HealthPackageState extends State<HealthPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HealthPackageDetail()));
          },
          child: Container(
            margin: EdgeInsets.all(6.0),
            height: double.infinity,

            child: buildBookAppointment(context),
          ),
        ),

      ),

    );
  }
}

buildBookAppointment(BuildContext context) {
  return GridView.builder(
    padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10, bottom: 10),
    shrinkWrap: false,
    itemCount: 10,
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.58,
    ),
    itemBuilder: (context, index) {
      //final item = searchList[index];
      return HealthPackageItem();
    },
  );
}
