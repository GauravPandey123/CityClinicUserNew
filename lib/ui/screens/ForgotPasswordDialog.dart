import 'package:city_clinic_user/ui/screens/ResetPasswordDialog.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordDialog extends StatefulWidget {
  @override
  _ForgotPasswordDialogState createState() => _ForgotPasswordDialogState();
}

class _ForgotPasswordDialogState extends State<ForgotPasswordDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(20.0),
          height: 350,

          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Forgot  Password",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your registered mobile number, we will send an OTP to reset you password.",
                  style: TextStyle(fontSize: 16.0, color: blackOneColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                    child: Container(
                        child: Column(
                  children: <Widget>[
                    TextFormField(
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        maxLines: 1,
                        maxLength: 10,
                        decoration: InputDecoration(labelText: "Enter your phone no")),
                  ],
                ))),
                SizedBox(height: 20,),
                SizedBox(
                  width: 320.0,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0)), //this right here
                                child: ResetPasswordDialog()
                            );
                          });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: blueTextColor,
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize : 16.0,color: Colors.white),
                    ),
                  ),
                )
              ]),


    );
  }
}
