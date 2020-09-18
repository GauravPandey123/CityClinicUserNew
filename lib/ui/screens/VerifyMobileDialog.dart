import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Text(
            "Verify Mobile",
            style: new TextStyle(fontSize: 20.0, color: blackOneColor),
          ),
          Text(
            "Enter OTP sent to 9876543210. Wrong Mobile number Click Here.",
             style: new TextStyle(fontSize: 20.0, color: blackOneColor),
          ),
          Text(
             "OTP"
          ),
          Row(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      border:
                      Border.all(width: 2, color: whiteColor),
                      borderRadius:
                      BorderRadius.all(Radius.circular(20)))
              ),
            ],

          )

        ],
      ),
    );
  }
}
