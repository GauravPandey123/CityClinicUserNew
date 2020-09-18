
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookSlotTimeItem extends StatefulWidget {
  @override
  _BookSlotTimeState createState() => _BookSlotTimeState();
}

  class _BookSlotTimeState extends State<BookSlotTimeItem>{
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.fromLTRB(16,4,16,4 ),
     margin: EdgeInsets.all(10.0),
     decoration: BoxDecoration(
           border: Border.all(width: 1, color: dividerColor),
           borderRadius: BorderRadius.all(Radius.circular(14))),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
          Text("7 July, 2020",style: TextStyle(fontSize: 18.0,color: blackOneColor),),
          SizedBox(height: 10),
          Text("9 Slots",style: TextStyle(fontSize: 20.0,color: blueTextColor),),
         SizedBox(height: 10),
       ],
     ),
   );
  }
}

