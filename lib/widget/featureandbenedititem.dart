import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeatureandBenefitItem extends StatefulWidget {
  @override
  _FeatureandBenefitItemState createState() => _FeatureandBenefitItemState();
}

class _FeatureandBenefitItemState extends State<FeatureandBenefitItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(tickImage,height: 20,width: 40,fit: BoxFit.scaleDown,),
          SizedBox(width: 10),
          Text("Lorem ipsum dolor sit amet,.",style: TextStyle(
            fontSize: 16.0,color: normaltextColor
          ),)
        ],
      ),
    );
  }
}
