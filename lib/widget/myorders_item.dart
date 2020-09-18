import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrderItem extends StatefulWidget {

  MyOrderItem();

  @override
  _MyOrderItemState createState() => _MyOrderItemState();
}

class _MyOrderItemState extends State<MyOrderItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SafeArea(
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: blackOneColor),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: Wrap(
              children: <Widget>[
                Column(
                  // mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "V2C2020060121",
                              style: new TextStyle(
                                  fontSize: 16.0,
                                  color: blackOneColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "26 aug 2020",
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: greyOneColor,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 14, right: 14),
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: yellowTextColor),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: FlatButton(
                            onPressed: null,
                            child: Text(
                              " . Pending",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: yellowTextColor,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Divider(color: greyOneColor, height: 1),
                    SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Order Status",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: greyOneColor,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Shipping",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: blackTextColor ,
                              fontWeight: FontWeight.normal),
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Order Status",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: greyOneColor,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Shipping",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: blackTextColor ,
                              fontWeight: FontWeight.normal),
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Order Status",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: greyOneColor,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Shipping",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: blackTextColor ,
                              fontWeight: FontWeight.normal),
                        ),

                      ],
                    ),
                    SizedBox(height: 4),
                  ],
                ),
              ],
            ),
          ),
        ),

    );
  }
}
