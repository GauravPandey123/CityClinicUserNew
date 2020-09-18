 import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
   @override
   _ChangePasswordState createState() => _ChangePasswordState();
 }

 class _ChangePasswordState extends State<ChangePassword> {
  final GlobalKey<FormState> _formKey = GlobalKey();
   GlobalKey<ScaffoldState> _globalKey = GlobalKey();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       key: _globalKey,
       body: SafeArea(
         child: SingleChildScrollView(
           child: Container(
             child: Column(
               children: <Widget>[
                 Form(
                   key: _formKey,
                   child: Container(
                     margin: EdgeInsets.all(20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       children: <Widget>[
                         TextFormField(
                           cursorColor: Colors.black,
                           keyboardType: TextInputType.visiblePassword,
                           decoration: InputDecoration(labelText: "Password"),

                         ),
                         SizedBox(
                           height: 10,
                         ),
                         TextFormField(
                           cursorColor: Colors.black,
                           keyboardType: TextInputType.visiblePassword,
                           decoration:
                           InputDecoration(labelText: "New Password"),
                         ),
                         SizedBox(
                           height: 10,
                         ),
                         TextFormField(
                           cursorColor: Colors.black,
                           keyboardType: TextInputType.visiblePassword,
                           decoration: InputDecoration(labelText: "Confirm Password"),
                         ),
                         SizedBox(
                           height: 30,
                         ),
                         FlatButton(
                           height: 50,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30)),
                           color: blueTextColor,
                           onPressed: () {},
                           child: Text(
                             "Save",
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
