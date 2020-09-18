import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LabCategoryItem extends StatefulWidget {
  @override
  _LabCategoryItemState createState() => _LabCategoryItemState();
}

class _LabCategoryItemState extends State<LabCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: SvgPicture.asset(
            categoryImage,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 6.0,
          left: 6.0,
          child: SvgPicture.asset(
            categoryImage,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
