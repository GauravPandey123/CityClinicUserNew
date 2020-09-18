import 'dart:async';

import 'package:city_clinic_user/ui/screens/signup/Signup.dart';
import 'package:city_clinic_user/ui/screens/splash/Splash2.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/Constants.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    Splash2()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.60;


    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: blueTextColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 130,
                height: 180,
                child: SvgPicture.asset(
                  splashLogo,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: new EdgeInsets.only(top : 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      Constants.Splash_Text,
                      style: new TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                    )
                  ],
                ),

              )
            ],
          ),


        ),
      ),
    );
  }




}
