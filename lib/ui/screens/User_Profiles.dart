import 'dart:ffi';

import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProfiles extends StatefulWidget {
  @override
  _UserProfilesState createState() => _UserProfilesState();
}

class _UserProfilesState extends State<UserProfiles> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SafeArea(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Wrap(
              children: <Widget>[
                Container(
                  child: Column(children: <Widget>[
                    Text(
                      "My Folders",
                      style: TextStyle(fontSize: 16.0, color: blueTextColor),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 4, 10, 4) ,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: dividerColor),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My Appointments",
                            style:
                                TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                          SvgPicture.asset(forwardImage,height: 40,width: 40)
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 4, 10, 4) ,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: dividerColor),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Test Bookings",
                            style:
                            TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                          SvgPicture.asset(forwardImage,height: 40,width: 40)
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 4, 10, 4) ,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: dividerColor),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My Consultations",
                            style:
                            TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                          SvgPicture.asset(forwardImage,height: 40,width: 40)
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 4, 10, 4) ,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: dividerColor),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My Appointments",
                            style:
                            TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                          SvgPicture.asset(forwardImage,height: 40,width: 40)
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 4, 10, 4) ,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: dividerColor),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My Members",
                            style:
                            TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                          SvgPicture.asset(forwardImage,height: 40,width: 40)
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 4, 10, 4) ,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: dividerColor),
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My Health Plan",
                            style:
                            TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                          SvgPicture.asset(forwardImage,height: 40,width: 40)
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 10),
                Divider(color: dividerColor,height: 1),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(12, 4, 10, 4) ,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: dividerColor),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "My Orders",
                        style:
                        TextStyle(fontSize: 16.0, color: blackOneColor),
                      ),
                      SvgPicture.asset(forwardImage,height: 40,width: 40)
                    ],
                  ),

                ),

              ],
            )),
      ),
    );
  }
}
