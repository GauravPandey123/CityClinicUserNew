import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBookedListItem extends StatefulWidget {
  @override
  _TopBookedListItemState createState() => _TopBookedListItemState();
}

class _TopBookedListItemState extends State<TopBookedListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: greyOneColor),
              borderRadius: BorderRadius.all(Radius.circular(14))),
          child: Stack(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Test Name",
                      style: new TextStyle(
                          fontSize: 16.0,
                          color: blackOneColor
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, con",
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: greyOneColor
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rs 500",
                      style: new TextStyle(
                          fontSize: 16.0,
                          color: blueTextColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              new Positioned(
                child: new Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: FlatButton(
                    height: 50,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    color: blueTextColor,
                    onPressed: () {},
                    child: Text(
                      "Book Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
