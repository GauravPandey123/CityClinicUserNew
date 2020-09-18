import 'package:city_clinic_user/main.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NoInternet extends StatelessWidget {
  final String errorMsg;

  NoInternet(this.errorMsg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              NO_INTERNET,
              width: 256,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              errorMsg,
              style: TextStyle(fontSize: 20, color: blueTextColor),
            ),
            SizedBox(
              height: 16,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: BorderSide(color: blueTextColor)),
              onPressed: () {
                RestartWidget.restartApp(context);
              },
              child: Text(
                "Retry",
                style: TextStyle(color: blueTextColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
