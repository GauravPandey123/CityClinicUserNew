import 'package:city_clinic_user/paint/GreyRectnagularPaint.dart';
import 'package:city_clinic_user/ui/screens/findandbook/FindandBookDetail.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindandBookItem extends StatefulWidget {
  @override
  _FindandBookState createState() => _FindandBookState();
}

class _FindandBookState extends State<FindandBookItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () => { Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => FindandBookDetail()))},
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            height: 50,
                            width: 50,
                            child:
                                SvgPicture.asset(signupName, fit: BoxFit.cover),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "Dr Name",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                              Text("Speciality")
                            ],
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Years Exp. : 4yrs",
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      new Container(
                          width: 4,
                          child: VerticalDivider(color: greyOneColor)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Locality : Place Name",
                            style:
                                TextStyle(fontSize: 14.0, color: greyOneColor),
                          ),
                          Text(
                            "Charges Name",
                            style:
                                TextStyle(fontSize: 14.0, color: greyOneColor),
                          )
                        ],
                      ),
                      new Container(
                          width: 4,
                          child: VerticalDivider(color: greyOneColor)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 14.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: blueTextColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "Consult Online",
                              style: TextStyle(
                                  fontSize: 16.0, color: blueTextColor),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 14.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: blueTextColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: blueTextColor),
                            // make rounded corner of border),
                            child: Text(
                              "Book Appointment",
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
