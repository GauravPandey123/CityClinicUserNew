import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentSummary extends StatefulWidget {
  @override
  _AppointmentSummaryState createState() => _AppointmentSummaryState();
}

class _AppointmentSummaryState extends State<AppointmentSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(iconsProfile, height: 80, width: 80),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          ("Dr. Name"),
                          style:
                              TextStyle(fontSize: 20.0, color: blackOneColor),
                        ),
                        SizedBox(width: 10),
                        Text(
                          ("Qualification Details"),
                          style: TextStyle(fontSize: 16.0, color: greyOneColor),
                        ),
                        SizedBox(width: 6),
                        Text(
                          ("Speciality"),
                          style: TextStyle(fontSize: 16.0, color: greyOneColor),
                        ),
                        SizedBox(width: 6),
                        Text(
                          ("Years Exp. : 4yrs"),
                          style: TextStyle(fontSize: 16.0, color: greyOneColor),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(height: 1, color: dividerColor, thickness: 2),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Consultation Request",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        SvgPicture.asset(
                          editProfileImage,
                          height: 40,
                          width: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Type : ",
                          style:
                              TextStyle(fontSize: 16.0, color: normaltextColor),
                        ),
                        Text(
                          "Home Visit ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Date : ",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        Text(
                          "7 july 2020 ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Time ",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        Text(
                          "10 am - 7 pm ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(height: 1, color: dividerColor, thickness: 2),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Consultation Request",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        SvgPicture.asset(
                          editProfileImage,
                          height: 40,
                          width: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Type : ",
                          style:
                              TextStyle(fontSize: 16.0, color: normaltextColor),
                        ),
                        Text(
                          "Home Visit ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Date : ",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        Text(
                          "7 july 2020 ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Time ",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        Text(
                          "10 am - 7 pm ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(height: 1, color: dividerColor, thickness: 2),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Consultation Request",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        SvgPicture.asset(
                          editProfileImage,
                          height: 40,
                          width: 40,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Type : ",
                          style:
                              TextStyle(fontSize: 16.0, color: normaltextColor),
                        ),
                        Text(
                          "Home Visit ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Date : ",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        Text(
                          "7 july 2020 ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Time ",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                        Text(
                          "10 am - 7 pm ",
                          style:
                              TextStyle(fontSize: 16.0, color: blackOneColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(height: 1, color: dividerColor, thickness: 2),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Visit Address",
                      style: TextStyle(fontSize: 16.0, color: blueTextColor),
                    ),
                    SvgPicture.asset(
                      editProfileImage,
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1st Block, 1st Cross, Rammurthy Nagar,Bangalore-560016",
                  style: TextStyle(fontSize: 16.0, color: blackOneColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(height: 1, color: dividerColor, thickness: 2),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Consultation Summary",
                  style: TextStyle(fontSize: 16.0, color: blueTextColor),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Home Visit",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Rs 150",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: blackOneColor
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10),
                Divider(height: 1,color: dividerColor,thickness: 2,),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Amount Payble" , style: TextStyle(fontSize: 16.0,color: blackOneColor,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    Text("Rs 150" , style: TextStyle(fontSize: 16.0,color: blackOneColor,fontWeight: FontWeight.bold),)

                  ],
                ),
                SizedBox(height: 10),
                Divider(height: 1,color: dividerColor,thickness: 2,),
                SizedBox(height: 10),
                FlatButton(
                  height: 50,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: blueTextColor,
                  onPressed: () {},
                  child: Text(
                    "Proceed To Pay",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
