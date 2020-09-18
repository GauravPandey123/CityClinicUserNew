import 'package:city_clinic_user/ui/screens/login/Login-Screen.dart';
import 'package:city_clinic_user/ui/screens/signup/Signup.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash2 extends StatefulWidget {
  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueTextColor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(splashLogo,
                  width: 130, height: 180, fit: BoxFit.cover),
              SizedBox(height: 100),
              Text(
                "Welcome to  City Clinic",
                style: TextStyle(fontSize: 24.0, color: Colors.white,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              FlatButton(
                height: 40,
                minWidth: 180,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                child: Text(
                  "SignIn",
                  style: TextStyle(color: blueTextColor,fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(height: 20),
              FlatButton(
                height: 40,
                minWidth: 180,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.white)
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                  },
                child: Text(
                  "SignUp",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
