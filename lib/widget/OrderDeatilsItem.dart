import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDeatilsItem extends StatefulWidget {
  @override
  _OrderDeatilsItemState createState() => _OrderDeatilsItemState();
}

class _OrderDeatilsItemState extends State<OrderDeatilsItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: dividerColor),
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Wrap(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset(cartImage, height: 100, width: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Medicine Name  ",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 16.0, color: blackOneColor),
                    ),
                    Text(
                      "Rs 57",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 16.0, color: greyOneColor),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SvgPicture.asset(
                      wishListImage,
                      height: 18,
                      width: 18,
                    ),
                    Text(
                      "*1",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 16.0, color: greyOneColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
