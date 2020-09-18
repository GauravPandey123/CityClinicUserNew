import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddressShippingItem extends StatefulWidget {
  @override
  _AddressShippingItemState createState() => _AddressShippingItemState();
}

class _AddressShippingItemState extends State<AddressShippingItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SafeArea(
        child: Wrap(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: blueTextColor),
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Home",
                    style: new TextStyle(fontSize: 14.0, color: normaltextColor),
                  ),
                  SizedBox(height: 6),
                  Text("Karan Baweja ,6677777788",
                      style: new TextStyle(fontSize: 16.0, color: blackOneColor)),
                  SizedBox(height: 6),
                  Text("K1st Block, 1st Cross, Rammurthy Nagar, Bangalore-560016",
                      style: new TextStyle(fontSize: 16.0, color: blackOneColor)),
                  SizedBox(height: 6),
                  Row(
                    children: <Widget>[
                      FlatButton(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: blueTextColor)),
                          child: Text(
                            "Edit",
                            style: new TextStyle(
                                fontSize: 16.0,
                                color: blackOneColor
                            ),
                          )),
                      SizedBox(width: 30),
                      SvgPicture.asset(del,height: 24,width: 24,fit: BoxFit.cover,)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
       
      ),
    );
  }
}
