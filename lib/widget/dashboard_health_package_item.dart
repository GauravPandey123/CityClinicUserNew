
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardHealthPacakgeItem extends StatefulWidget {
  @override
  _DashBoardHealthPacakgeItemState createState() => _DashBoardHealthPacakgeItemState();
}

class _DashBoardHealthPacakgeItemState extends State<DashBoardHealthPacakgeItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        width: 230,
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            elevation: 3.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      child: SvgPicture.asset(twitter,  fit: BoxFit.cover),
                    ),
                    SizedBox(height: 7.0),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Speciality",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eleifend diam dictumst pellentesque in tellus.",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: normaltextColor
                          ),
                        ),
                      ],
                    )
                  ),
                ),

              ],
            )),
      ),
    );
  }
}
