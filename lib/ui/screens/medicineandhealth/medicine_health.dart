import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/healthcategory_item.dart';
import 'package:city_clinic_user/widget/medicine_catefory_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicineHealth extends StatefulWidget {
  @override
  _MedicineHealthState createState() => _MedicineHealthState();
}

class _MedicineHealthState extends State<MedicineHealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("assets/images/city_clinic_image.png"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Our Best Categories",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: blueTextColor,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 10,
                ),

                buildMedicineHealth(context),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Trending Products",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "ViewAll >",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
                Container(
                  height: 250,
                  child: buildHealthData(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

buildMedicineHealth(BuildContext context) {
  return GridView.builder(
    shrinkWrap: true,
    itemCount: 10,
    physics: ClampingScrollPhysics(),
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery
          .of(context)
          .size
          .width /
          (MediaQuery
              .of(context)
              .size
              .height / 1.6),
    ),
    itemBuilder: (context, index) {
      //final item = searchList[index];
      return MedicineCategory();
    },
  );
}

buildHealthData(BuildContext context) {
  return Container(
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return HealthCategoryItem();
      },
    ),
  );
  // return Scaffold(
}



