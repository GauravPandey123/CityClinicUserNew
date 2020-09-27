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
                    Row(
                      children: [
                        SvgPicture.asset(profile1Image, height:60, width:60,),
                        SizedBox(width: 15,),
                        Column(
                          children: [
                            Text("Pankaj Mangal",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700
                              ),),
                            SizedBox(height: 2,),
                            Text("pankaj.mangal@adsandurl.com",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: kAuthTextGreyColor,
                                  decoration: TextDecoration.underline
                              ),),
                            SizedBox(height: 2,),
                            Text("+91 - 9876543210",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: kAuthTextGreyColor,
                                  decoration: TextDecoration.underline
                              ),),
                          ],
                        ),
                        Expanded(
                          child: SvgPicture.asset(editProfileImage, height:24, width:24,
                            alignment: Alignment.topRight,),
                        ),
                        SizedBox(width: 6,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: kAuthTextGreyColor,
                      thickness: 1.2,
                    ),
                    Text(
                      "My Folders",
                      style: TextStyle(fontSize: 16.0, color: blueTextColor),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 4, 10, 4) ,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: dividerColor),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "My Appointments",
                            style:
                                TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                          SvgPicture.asset(forwardImage,height: 24,width: 24)
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
