import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/OrderDeatilsItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Product",
                  style: TextStyle(fontSize: 16.0, color: blueTextColor),
                ),
                buildOrderDeatilsList(context),
                SizedBox(height: 20),
                Text(
                  "Shipping Details",
                  style: TextStyle(
                    color: blueTextColor,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: dividerColor)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Order Date",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: normaltextColor,
                            ),
                          ),
                          Text(
                            "7 July, 2020",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: blackOneColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Order Date",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: normaltextColor,
                            ),
                          ),
                          Text(
                            "7 July, 2020",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: blackOneColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Order Date",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: normaltextColor,
                            ),
                          ),
                          Text(
                            "7 July, 2020",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: blackOneColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Order Date",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: normaltextColor,
                            ),
                          ),
                          Text(
                            "7 July, 2020",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: blackOneColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),

                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Payment Details",
                  style: TextStyle(
                    color: blueTextColor,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: dividerColor)),
                  child: Column(
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Order Date",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: normaltextColor,
                            ),
                          ),
                          Text(
                            "7 July, 2020",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: blackOneColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Order Date",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: normaltextColor,
                            ),
                          ),
                          Text(
                            "7 July, 2020",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: blackOneColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Order Date",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: normaltextColor,
                            ),
                          ),
                          Text(
                            "7 July, 2020",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: blackOneColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),


                    ],

                  ),

                ),
                FlatButton(
                  height: 50,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: blueTextColor,
                  onPressed: () {},
                  child: Text(
                    "Cancel Order",
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
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return OrderDeatilsItem();
      },
    ),
  );
}
