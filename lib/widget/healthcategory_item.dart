
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthCategoryItem extends StatefulWidget {
  @override
  _HealthCategoryItemState createState() => _HealthCategoryItemState();
}

class _HealthCategoryItemState extends State<HealthCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Container(
        height: 200,
        width: 250,
        child: Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        "assets/images/city_clinic_image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6.0,
                    left: 6.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0)),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          " Categoryy one ",
                          style: TextStyle(
                            fontSize: 10.0,
                            color: blackOneColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consect etur adipiscing elit at magnis.",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 7.0),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consect etur adipiscing elit at magnis ut tellus velit consequat facilisis pellentesque tellus at. Mauris, enim sagittis...",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                      color: normaltextColor
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),

            ],
          ),
        ),
      ),
    );
  }
}
