import 'package:city_clinic_user/ui/screens/forgotpassword/ForgotPasswordDialog.dart';
import 'package:city_clinic_user/ui/screens/OtpScreenDialog.dart';
import 'package:city_clinic_user/ui/screens/login/LoginBloc.dart';
import 'package:city_clinic_user/utils/AppRelatedText.dart';
import 'package:city_clinic_user/utils/AppUtils.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../BottomTabsScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final LoginBloc _bloc = LoginBloc();

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String phoneNo;
  String password;
  bool loggingin = false;

  @override
  void initState() {
    super.initState();
    _bloc.loginStream.listen((event) {
      if (event.user != null) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (_) => BottomTabsScreen()));
      } else {
        print(event.message);
      }
    });

    _bloc.loadingStream.listen((event) {
      if (context != null) {
        if (event) {
          AppUtils.showLoadingDialog(context);
        } else {
          Navigator.pop(context);
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                SizedBox(height: 48),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    AppRelatedText.signup_welcome_text,
                    style: new TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    AppRelatedText.signup_welcome_text_detailstocontinue,
                    style: new TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                            controller: _phoneController,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.phone,
                            decoration:
                                InputDecoration(labelText: "Mobile Number"),
                            validator: (v) {
                              if (v.isEmpty) {
                                return 'Mobile Number  is required';
                              } else if (v.length != 10) {
                                return 'Value should be 10 Digits';
                              }

                              String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                              RegExp regExp = new RegExp(pattern);
                              if (!regExp.hasMatch(v)) {
                                return 'Please enter valid mobile number';
                              }
                              return null;
                            }),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: "Password",
                          ),
                          validator: (v) {
                            if (v.isEmpty) {
                              return "Password is required";
                            }
                            if (v.length < 8) {
                              return 'Password should be 8 or more letters';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FlatButton(
                          height: 50,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      //this right here
                                      child: ForgotPasswordDialog());
                                });
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Passowrd",
                              style: TextStyle(
                                  color: greyOneColor, fontSize: 16.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Hero(
                          tag: "loginbutton",
                          child: FlatButton(
                            height: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            color: blueTextColor,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                if (_formKey.currentState.validate()) {
                                  _bloc.loginData(
                                      _phoneController.text.trim(),
                                      _passwordController.text.trim(),
                                      "123456",
                                      "123456");
                                }
                              }
                            },
                            child: Text(
                              "SignIn",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
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
