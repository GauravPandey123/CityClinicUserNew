import 'package:city_clinic_user/ui/screens/BookAppointment.dart';
import 'package:city_clinic_user/ui/screens/LabTestScreen.dart';
import 'package:city_clinic_user/ui/screens/findandbook/FindandBook.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/dashboard_health_package_item.dart';
import 'package:city_clinic_user/widget/depart_item.dart';
import 'package:city_clinic_user/widget/healthcategory_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'medicineandhealth/medicine_health.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/city_clinic_image.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "What are you looking for?",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16.0,
                color: blueTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Wrap(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindandBook()))
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: dividerColor)),
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Meet a Doctor",
                                    style: new TextStyle(
                                        fontSize: 14, color: blackOneColor),
                                  ),
                                  Text(
                                    "Book a appointment",
                                    style: new TextStyle(
                                        fontSize: 12, color: greyOneColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Image.asset(pharmacy, height: 40, width: 40),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Expanded(
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookAppointment()))
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: dividerColor)),
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Consult Online",
                                    style: new TextStyle(
                                        fontSize: 14, color: blackOneColor),
                                  ),
                                  Text(
                                    "Book Consultation",
                                    style: new TextStyle(
                                        fontSize: 12, color: greyOneColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Image.asset(consultOnline, height: 40, width: 40),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 4),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MedicineHealth()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: dividerColor)),
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Pharmacy",
                                    style: new TextStyle(
                                        fontSize: 14, color: blackOneColor),
                                  ),
                                  Text(
                                    "Medicines & Health",
                                    style: new TextStyle(
                                        fontSize: 12, color: greyOneColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Image.asset(meetadoctor, height: 40, width: 40),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LabTestScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: dividerColor)),
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "Lab Tests",
                                    style: new TextStyle(
                                        fontSize: 14, color: blackOneColor),
                                  ),
                                  Text(
                                    "Test & Checkups",
                                    style: new TextStyle(
                                        fontSize: 12, color: greyOneColor),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Image.asset(meetadoctor, height: 40, width: 40),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 14),
            Column(
              children: <Widget>[
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/offer_banner1.png",
                      fit: BoxFit.fill),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Departments",
                  style: TextStyle(
                      fontSize: 20,
                      color: blueTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "View all >",
                  style: TextStyle(
                      fontSize: 16,
                      color: blueTextColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Container(
              height: 170,
              child: buildDashBoardData(context),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Health Articles",
                  style: TextStyle(
                      fontSize: 20,
                      color: blueTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "View all >",
                  style: TextStyle(
                      fontSize: 16,
                      color: blueTextColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            Container(
              height: 250,
              child: buildHealthData(context),
            ),
            SizedBox(height: 10),
            Image.asset(
              "assets/images/city_clinic_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Health Articles",
                  style: TextStyle(
                      fontSize: 20,
                      color: blueTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "View all >",
                  style: TextStyle(
                      fontSize: 16,
                      color: blueTextColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 170,
              child: buildDashBoardData(context),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Health Packages",
                  style: TextStyle(
                      fontSize: 20,
                      color: blueTextColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "View all >",
                  style: TextStyle(
                      fontSize: 16,
                      color: blueTextColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(height: 250, child: buildHealthPackageData(context)),
          ],
        ),
      ),
    )));
  }
}

buildDashBoardData(BuildContext context) {
  return Container(
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return DepartItem();
      },
    ),
  );
  // return Scaffold(
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

buildHealthPackageData(BuildContext context) {
  return Container(
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return DashBoardHealthPacakgeItem();
      },
    ),
  );
  // return Scaffold(
}
