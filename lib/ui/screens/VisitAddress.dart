import 'package:city_clinic_user/ui/screens/AppointmentSummary.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisitAddress extends StatefulWidget {
  @override
  _VisitAddreeState createState() => _VisitAddreeState();
}

class _VisitAddreeState extends State<VisitAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Form(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Address Line 1"),

                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          decoration:
                          InputDecoration(labelText: "Address Line 2"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(labelText: "Email"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Area/Locality",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: blueTextColor,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AppointmentSummary()));
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
//                        Expanded(
//                            child: Align(
//                              alignment: Alignment.bottomCenter,
//                              child: RichText(
//                              text: TextSpan(
//                                children: [
//                                  TextSpan(
//                                      text:
//                                      "By proceeding, you agree to Smart Travel Ticket Privacy Policy,",
//                                      style: TextStyle(color: Color(0xFF858585))),
//                                  TextSpan(
//                                      text: "User Agreement",
//                                      style: TextStyle(color: Colors.black)),
//                                  TextSpan(
//                                      text: " and ",
//                                      style: TextStyle(color: Color(0xFF858585))),
//                                  TextSpan(
//                                      text: "Terms of Services.",
//                                      style: TextStyle(color: Colors.black))
//    ]
//                              )),
//                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
