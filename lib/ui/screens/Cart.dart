import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/findandbook_item.dart';
import 'package:city_clinic_user/widget/mycart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(

          children: <Widget>[
            Column(
              children: <Widget>[
                buildCartData(context),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                  decoration:
                  BoxDecoration
                    (border: Border.all(width: 1, color: dividerColor),),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Sub Total",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: normaltextColor),
                          ),
                          Text("Rs 95",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: blackOneColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Delivery Fee (-)",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: blueTextColor),
                          ),
                          Text("Rs 95",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: blackOneColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Discount (+)",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: blueTextColor),
                          ),
                          Text("Rs 95",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: blackOneColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Order Total",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: blueTextColor),
                          ),
                          Text("Rs 95",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: blackOneColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

            new Positioned(
              child: new Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: FlatButton(
                    height: 50,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                     color: blueTextColor,
                    onPressed: () {

                    },
                    child: Text(
                      "Proceed To Payment",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
              ),
            )
          ],

        ),
      ),
    );
  }
}

buildCartData(BuildContext context) {
  return Container(
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return MyCartItem();
      },
    ),
  );
}
