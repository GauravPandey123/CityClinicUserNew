import 'package:city_clinic_user/ui/screens/updateprofilesignup/ProfileDetails.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SucessScreenDart extends StatefulWidget {
  @override
  _SucessScreenDartState createState() => _SucessScreenDartState();
}

class _SucessScreenDartState extends State<SucessScreenDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(successIcon, height: 100, width: 100),
          SizedBox(height: 20),
          Text(
            "Success",
            style: TextStyle(fontSize: 20.0, color: blackOneColor),
          ),
          SizedBox(height: 10),
          Text(
            "Thank you for choosing City Clinic",
            style: TextStyle(fontSize: 20.0, color: normaltextColor),
          ),
          SizedBox(height: 30),
          FlatButton(
            height: 50,
            minWidth: 200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: blueTextColor,
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => (ProfileDetails())));
            },
            child: Text(
              "Get Started",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
