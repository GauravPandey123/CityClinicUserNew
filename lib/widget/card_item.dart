import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CardItem extends StatefulWidget {
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.all(10.0),
       child: Container(
         child: CreditCardWidget(
           cardNumber: "5450 7879 4864 7854",
           expiryDate: "10/25",
           cardHolderName: "Card Holder",
           cvvCode: "456",
           cardbgColor: Colors.white,
           height: 175,
           textStyle: TextStyle(color: blackOneColor),
           width: MediaQuery.of(context).size.width, showBackView: false,
         ),
       ),
    );
  }
}
