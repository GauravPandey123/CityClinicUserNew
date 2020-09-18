
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationItem extends StatefulWidget {
  @override
  _NotificationItemState createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children:<Widget> [
           Row(
             children: <Widget>[
               SvgPicture.asset(notificatImage,height: 24,width: 24),
               SizedBox(width: 20),
               Text("The Best Title",style: TextStyle(fontSize: 18.0,color: blackOneColor,fontWeight: FontWeight.bold),)
             ],
           ),
           Column(
             children: <Widget>[
               Text("The Best Title",style: TextStyle(fontSize: 18.0,color: normaltextColor,fontWeight: FontWeight.bold),),
               SizedBox(width: 10),
               Text("The Best Title",style: TextStyle(fontSize: 18.0,color: normaltextColor,fontWeight: FontWeight.bold),),
               SizedBox(width: 10),
               Text("The Best Title",style: TextStyle(fontSize: 18.0,color: normaltextColor,fontWeight: FontWeight.bold),),
               SizedBox(width: 10),
             ],
           )
         ],
       ),
    );
  }
}
