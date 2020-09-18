import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetailFamilyMember extends StatefulWidget {
  @override
  _ProfileDetailFamilyMemberState createState() =>
      _ProfileDetailFamilyMemberState();
}

class _ProfileDetailFamilyMemberState extends State<ProfileDetailFamilyMember> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
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
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Full Name"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Relation"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Select Date"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Select Nationality"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Height (in cms)"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Weight (in kgs)"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          color : blueTextColor,
                          onPressed: () {},
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
