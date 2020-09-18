
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Specialityitem extends StatefulWidget {
  @override
  _SpecialityitemState createState() => _SpecialityitemState();
}

class _SpecialityitemState extends State<Specialityitem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child : Row(
        children: <Widget>[
         Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: dividerColor)),
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Pharmacy",
                        style: new TextStyle(
                            fontSize: 16, color: blackOneColor),
                      ),
                      Text(
                        "Medicines & Health",
                        style: new TextStyle(
                            fontSize: 12, color: greyOneColor),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Image.asset(meetadoctor, height: 40, width: 40),
                  SizedBox(
                    width: 4,
                  ),
                  SvgPicture.asset(forwardImage,
                      height: 24, width: 24)
                ],
              ),
            ),

          SizedBox(height: 10.0),


        ],
      ),

    );
  }
}
