import 'package:city_clinic_user/ui/screens/setting/ChangePassword.dart';
import 'package:city_clinic_user/ui/screens/setting/ContactUs.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingPageOne extends StatefulWidget {
  @override
  _SettingPageOneState createState() => _SettingPageOneState();
}

class _SettingPageOneState extends State<SettingPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SvgPicture.asset(
                    profile1Image, height: 100, width: 100, fit: BoxFit.cover,),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: dividerColor),
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Karam Bajwa", style: TextStyle(fontSize: 20,
                                color: blackOneColor,
                                fontWeight: FontWeight.bold),),
                            SvgPicture.asset(editProfileImage, height: 32,
                              width: 32,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text("karam.bajwa@adsandurl.com", style: TextStyle(
                            fontSize: 14, color: normaltextColor),),
                        SizedBox(height: 10,),
                        Text("+91 98765 43210", style: TextStyle(
                            fontSize: 14, color: normaltextColor),),

                      ],
                    ),
                  )

                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () => {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangePassword())),
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: dividerColor),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Change Password", style: TextStyle(
                          fontSize: 14, color: normaltextColor),),
                      SvgPicture.asset(forwardImage, height: 24, width: 24,)
                    ],
                  ),
                ),

              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: dividerColor),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Terms and Condition",
                      style: TextStyle(fontSize: 14, color: normaltextColor),),
                    SvgPicture.asset(forwardImage, height: 24, width: 24,)
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: dividerColor),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("FAQs",
                      style: TextStyle(fontSize: 14, color: normaltextColor),),
                    SvgPicture.asset(forwardImage, height: 24, width: 24,)
                  ],
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs())),
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: dividerColor),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Contact Us", style: TextStyle(
                          fontSize: 14, color: normaltextColor),),
                      SvgPicture.asset(forwardImage, height: 24, width: 24,)
                    ],
                  ),
                ),

              ),

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: dividerColor),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Logout",
                      style: TextStyle(fontSize: 14, color: normaltextColor),),
                    SvgPicture.asset(forwardImage, height: 24, width: 24,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
