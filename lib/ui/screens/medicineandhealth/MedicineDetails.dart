import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicineDetails extends StatefulWidget {
  @override
  _MedicineDetailsState createState() => _MedicineDetailsState();
}

class _MedicineDetailsState extends State<MedicineDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Medicine Name Goes Her in two or one lines",
                            style: TextStyle(fontSize: 18.0)),
                      ),
                      FlatButton(
                        onPressed: null,
                        child: Text(
                          "In Stock",
                          style: TextStyle(fontSize: 14.0, color: lightGreenColor),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: lightGreenColor)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        "Category :",
                        style: TextStyle(fontSize: 14.0, color: normaltextColor),
                      ),
                      SizedBox(width: 60),
                      Text(
                        "Category #1",
                        style: TextStyle(fontSize: 14.0, color: blackOneColor),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        "Brand :",
                        style: TextStyle(fontSize: 14.0, color: normaltextColor),
                      ),
                      SizedBox(width: 60),
                      Text(
                        "Category #1",
                        style: TextStyle(fontSize: 14.0, color: blackOneColor),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        "Salt/Composition :",
                        style: TextStyle(fontSize: 14.0, color: normaltextColor),
                      ),
                      SizedBox(width: 60),
                      Text(
                        "Category #1",
                        style: TextStyle(fontSize: 14.0, color: blackOneColor),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      Text(
                        "Note :",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: blackOneColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Prescription Required",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: redColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1,
                    color: dividerColor,
                    thickness: 2,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        "Price :",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: blackOneColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Rs 57",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: blueTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Rs 57",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: normaltextColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
                    color: dividerColor,
                    thickness: 2,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        "Pack Size/Syrup Size : ",
                        style: TextStyle(fontSize: 16.0, color: normaltextColor),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Syrup 200ml ",
                        style: TextStyle(fontSize: 16.0, color: blackOneColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                    color: dividerColor,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style:
                    TextStyle(fontSize:18.0,color: blueTextColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit utali quam orem ipsum dolor sit amet, consectetur adipiscing. Elit utali quam. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit utali quam orem ipsum dolor sit amet, consectetur adipiscing. Elit utali quam. Lorem ipsum dolor sit amet. ",
                    style: TextStyle(fontSize: 14.0, color: greyOneColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                    color: dividerColor,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Dosage",
                    style:
                    TextStyle(fontSize:18.0,color: blueTextColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit utali quam orem ipsum dolor sit amet, consectetur adipiscing. Elit utali quam. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit utali quam orem ipsum dolor sit amet, consectetur adipiscing. Elit utali quam. Lorem ipsum dolor sit amet. ",
                    style: TextStyle(fontSize: 14.0, color: normaltextColor),
                  ),
                  SizedBox(height: 20),
                  Divider(
                    height: 1,
                    color: dividerColor,
                    thickness: 2,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Ingredients",
                    style:
                    TextStyle(color: blueTextColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    height: 1,
                    color: dividerColor,
                    thickness: 2,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Other Details",
                    style:
                    TextStyle(color: blueTextColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit utali quam orem ipsum dolor sit amet, consectetur adipiscing. Elit utali quam. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit utali quam orem ipsum dolor sit amet, consectetur adipiscing. Elit utali quam. Lorem ipsum dolor sit amet. ",
                    style: TextStyle(fontSize: 14.0, color: normaltextColor),
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
                      "Add to Cart ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )),
        ),

    );
  }
}
