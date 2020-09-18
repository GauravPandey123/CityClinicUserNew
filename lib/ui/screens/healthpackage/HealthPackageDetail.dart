import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/featureandbenedititem.dart';
import 'package:city_clinic_user/widget/healthpackageitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HealthPackageDetail extends StatefulWidget {
  @override
  _HealthPackageDetailState createState() => _HealthPackageDetailState();
}

class _HealthPackageDetailState extends State<HealthPackageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
         child: Container(
           margin: EdgeInsets.all(10.0),
           child: Column(
             children: <Widget>[
               Image.asset(
                 "assets/images/city_clinic_image.png",
                 fit: BoxFit.fill,
               ),
               SizedBox(
                 height: 10,
               ),
               Container(
                   margin: EdgeInsets.all(10.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text("Package Title",
                               style: TextStyle(
                                   fontSize: 20.0,
                                   fontWeight: FontWeight.bold,
                                   color: blackOneColor)),
                           SvgPicture.asset(
                             shareImage,
                             height: 40,
                             width: 40,
                             fit: BoxFit.cover,
                           )
                         ],
                       ),
                       SizedBox(height: 10),
                       Text(
                         "Validity : 30 Days",
                         style: TextStyle(fontSize: 14.0, color: greyOneColor),
                       ),
                       SizedBox(height: 20),
                       Row(
                         children: <Widget>[
                           Text(
                             "Price :",
                             style: TextStyle(
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.bold,
                                 color: blackOneColor),
                           ),
                           SizedBox(height: 20),
                           Text(
                             "Rs 100",
                             style: TextStyle(
                                 fontSize: 18.0,
                                 fontWeight: FontWeight.bold,
                                 color: blueTextColor),
                           )
                         ],
                       ),
                       SizedBox(height: 20),
                       Text(
                         "Features & Benifits",
                         style: TextStyle(fontSize: 16.0, color: blueTextColor),
                       ),
                       Container(
                         height: 200,
                         width: double.infinity,
                         child: buildOrderDeatilsList(context),
                       ),
                       SizedBox(
                         height: 10,
                       ),

                     ],
                   )
               ),
               FlatButton(
                 height: 50,
                 minWidth: double.infinity,
                 padding: EdgeInsets.all(10.0),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30)),
                 color: blueTextColor,
                 onPressed: () {},
                 child: Text(
                   "Buy Now",
                   style: TextStyle(color: Colors.white),
                 ),
               ),

             ],
           ),
         ),
        ),
      ),
    );
  }
}

buildOrderDeatilsList(BuildContext context) {
  return Container(

    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return FeatureandBenefitItem();
      },
    ),
  );
}
