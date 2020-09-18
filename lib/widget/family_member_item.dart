import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FamilyMemberItem extends StatefulWidget {
  @override
  _FamilyMemberState createState() => _FamilyMemberState();
}

class _FamilyMemberState extends State<FamilyMemberItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        padding: EdgeInsets.all(6.0),
        child: Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 80,
                width: 80,
                child: SvgPicture.asset(iconsProfile, fit: BoxFit.cover),

              ),
              Column(
                children: <Widget>[
                  Text("Member Name",style: TextStyle(fontSize: 16.0,color: blackOneColor),),
                  SizedBox(height: 10,),
                  Text("Relation",style: TextStyle(fontSize: 16.0,color: blackOneColor),),
                ],
              ),

              SvgPicture.asset(deleteImage,height: 40,width: 40,),
            ],
          ),
        ),
      ),
    );
  }
}