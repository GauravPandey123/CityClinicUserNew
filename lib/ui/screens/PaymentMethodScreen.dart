import 'package:city_clinic_user/ui/screens/AddAdress.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/Address_Shiping_Item.dart';
import 'package:city_clinic_user/widget/card_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodScreen extends StatefulWidget {
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 90,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: dividerColor)),
                                  child: Column(
                                    children: <Widget>[
                                      SvgPicture.asset(paymentImage,
                                          height: 80,
                                          width: 80,
                                          fit: BoxFit.cover),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Credit Card",
                                  style: TextStyle(
                                      fontSize: 16.0, color: blackOneColor),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 90,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: dividerColor)),
                                  child: Column(
                                    children: <Widget>[
                                      SvgPicture.asset(debitCardImage,
                                          height: 80,
                                          width: 80,
                                          fit: BoxFit.cover),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Debit Card",
                                  style: TextStyle(
                                      fontSize: 16.0, color: blackOneColor),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 90,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: dividerColor)),
                                  child: Column(
                                    children: <Widget>[
                                      SvgPicture.asset(money,
                                          height: 80,
                                          width: 80,
                                          fit: BoxFit.cover),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "COD ",
                                  style: TextStyle(
                                      fontSize: 16.0, color: blackOneColor),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 90,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: dividerColor)),
                                  child: Column(
                                    children: <Widget>[
                                      SvgPicture.asset(paypal,
                                          height: 80,
                                          width: 80,
                                          fit: BoxFit.cover),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "PayPal",
                                  style: TextStyle(
                                      fontSize: 16.0, color: blackOneColor),
                                )
                              ],
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Card",
                        style:
                            new TextStyle(fontSize: 16.0, color: blueTextColor),
                      ),
                      new OutlineButton(
                          padding: EdgeInsets.all(10.0),
                          child: new Text(
                            " + Add New",
                            style: new TextStyle(
                                fontSize: 16.0, color: blueTextColor),
                          ),
                          onPressed: null,
                          borderSide: BorderSide(color: blueTextColor),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)))
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Ship To",
                        style:
                            new TextStyle(fontSize: 16.0, color: blueTextColor),
                      ),
                      new OutlineButton(
                          padding: EdgeInsets.all(10.0),
                          child: new Text(
                            " + Add New",
                            style: new TextStyle(
                                fontSize: 16.0, color: blueTextColor),
                          ),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AddAddress()));
                          },
                          borderSide: BorderSide(color: blueTextColor),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)))
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Amount",
                    style: TextStyle(fontSize: 20.0, color: blueTextColor),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: dividerColor)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Sub Total",
                              style: new TextStyle(
                                  fontSize: 16.0, color: greyOneColor),
                            ),
                            Text(
                              "Rs 95",
                              style: new TextStyle(
                                  fontSize: 16.0, color: blackOneColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Sub Total",
                                style: new TextStyle(
                                    fontSize: 16.0, color: greyOneColor),
                              ),
                              Text(
                                "Rs 95",
                                style: new TextStyle(
                                    fontSize: 16.0, color: blackOneColor),
                              ),
                            ]),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Sub Total",
                              style: new TextStyle(
                                  fontSize: 16.0, color: greyOneColor),
                            ),
                            Text(
                              "Rs 95",
                              style: new TextStyle(
                                  fontSize: 16.0, color: blackOneColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Sub Total",
                                style: new TextStyle(
                                    fontSize: 16.0, color: greyOneColor),
                              ),
                              Text(
                                "Rs 95",
                                style: new TextStyle(
                                    fontSize: 16.0, color: blackOneColor),
                              ),
                            ]),
                        SizedBox(height: 10),

                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  FlatButton(
                    height: 50,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: blueTextColor,
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

buildCardDataItem(BuildContext context) {
   ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return CardItem();
      },

  );
}


buildShipDataItem(BuildContext context) {
  ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return AddressShippingItem();
      },

  );
}

