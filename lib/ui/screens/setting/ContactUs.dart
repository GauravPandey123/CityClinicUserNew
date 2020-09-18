import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10.0),
            key: _globalKey,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(labelText: "Full Name"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(labelText: "Mobile Number"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: "Email Id"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 200,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: blackOneColor)),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Message",
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                              maxLines: 8,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    FlatButton(
                      height: 50,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: blueTextColor,
                      onPressed: () {},
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
