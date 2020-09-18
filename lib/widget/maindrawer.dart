import 'package:city_clinic_user/animation/SlideRightRoute.dart';
import 'package:city_clinic_user/ui/screens/BookAppointment.dart';
import 'package:city_clinic_user/ui/screens/Dashboard.dart';
import 'package:city_clinic_user/ui/screens/healthpackage/HealthPackage.dart';
import 'package:city_clinic_user/ui/screens/setting/SettingPageOne.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, Function tapHandler) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -3),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          color: blueTextColor,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SvgPicture.asset(
                    profileImage,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Karam Bajwa",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "987 6543 210",
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              buildListTile('Home', () {
                Navigator.push(
                    context,
                    SlideRightRoute(page: Dashboard()));
              }),
              buildListTile('Book Appointment', () {
                Navigator.push(
                    context,
                    SlideRightRoute(page: BookAppointment()));
              }),
              buildListTile('ConsultOnline', () {
                Navigator.push(
                    context,
                    SlideRightRoute(page: BookAppointment()));
              }),
              buildListTile('Store', () {}),
              buildListTile('Royal City Clinic', () {}),
              buildListTile('Fahaheel', () {}),
              buildListTile('Health Packages', () {
                Navigator.push(
                    context,
                    SlideRightRoute(page: HealthPackage()));
              }),
              buildListTile('Health Articles', () {}),
              SizedBox(height: 6.0),
              Divider(
                height: 2,
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(height: 6.0),
              buildListTile('My Chats ', () {}),
              buildListTile('My Account', () {}),
              buildListTile('Settings', () {
                Navigator.push(
                    context,
                    SlideRightRoute(page: SettingPageOne()));
              }),
              SizedBox(height: 6.0),
              Divider(
                height: 2,
                color: Colors.white,
                thickness: 2,
              ),
              buildListTile('Logout', () {}),
            ],
          ),
        ),
      ),
    ));
  }
}
