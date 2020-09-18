import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileFamilyAddDetail extends StatefulWidget {
  @override
  _ProfileFamilyAddDetailState createState() => _ProfileFamilyAddDetailState();
}

class _ProfileFamilyAddDetailState extends State<ProfileFamilyAddDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  child: SvgPicture.asset(
                    iconsProfile,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: new EdgeInsets.only(
                      top: 40, left: 10, right: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cursus felis praesent augue eget lorem. Ut ultrices rhoncus facilisis augue. Lorem ipsum dolor sit amet.",
                        style: new TextStyle(
                            fontSize: 16.0,
                            letterSpacing: 4,
                            color: greyOneColor),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        color: blueTextColor,
                        onPressed: () {},
                        child: Text(
                          "+ Add a new member",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  alignment: Alignment.bottomCenter,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
