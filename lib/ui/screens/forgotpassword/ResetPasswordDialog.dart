
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordDialog extends StatefulWidget {
  @override
  _ResetPasswordDialogState createState() => _ResetPasswordDialogState();
}

class _ResetPasswordDialogState extends State<ResetPasswordDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Wrap(
        children:<Widget> [
           Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Reset  Password",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create new password for your account to be secure.",
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
                                keyboardType: TextInputType.visiblePassword,
                                maxLines: 1,
                                decoration: InputDecoration(labelText: "New Password")),
                            SizedBox(height: 20),
                            TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.visiblePassword,
                                maxLines: 1,
                                decoration: InputDecoration(labelText: "Confirm Passowrd")),
                          ],
                        ))),
                SizedBox(height: 20,),
                SizedBox(
                  width: 320.0,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
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

        ],
      ),


    );
  }
  }

