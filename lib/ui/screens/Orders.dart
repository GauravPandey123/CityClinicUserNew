import 'package:city_clinic_user/widget/myorders_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: <Widget>[buildOrderData(context)],
          ),
        ),
      ),
    );
  }
}

buildOrderData(BuildContext context) {
  return Container(
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return MyOrderItem();
      },
    ),
  );
  // return Scaffold(
}
