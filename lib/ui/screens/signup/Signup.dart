import 'package:city_clinic_user/ui/screens/BottomTabsScreen.dart';
import 'package:city_clinic_user/ui/screens/signup/VerifyOtpDialog.dart';
import 'package:city_clinic_user/ui/screens/signup/bloc/SignUpBloc.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/AppUtils.dart';
import 'package:city_clinic_user/utils/PrefsHelper.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:city_clinic_user/utils/AppRelatedText.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  final SignUpBloc _bloc = SignUpBloc();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc.signUpStream.listen((event) {
      if (event.user != null) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return VerifyOtpDialog(user: event.user);
            });
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
    _bloc.dispose();
    _nameController?.dispose();
    _phoneController?.dispose();
    _emailController?.dispose();
    _passwordController?.dispose();
    super.dispose();
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
                SizedBox(height: 20),
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
                Form(
                  key: _formKey,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          controller: _nameController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(labelText: "Name"),
                          validator: (v) {
                            if (v.isEmpty) {
                              return "Field is required";
                            }
                            if (v.length < 3) {
                              return 'Name should be 3 or more letters';
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _phoneController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
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
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _emailController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(labelText: "Email"),
                          validator: (v) {
                            if (v.isEmpty) {
                              return 'Email  is required';
                            }
                            String pattern =
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                            RegExp regExp = new RegExp(pattern);
                            if (!regExp.hasMatch(v)) {
                              return 'Please enter valid emailId';
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          cursorColor: Colors.black,
                          autofocus: false,
                          obscureText: true,
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
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 14.0),
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Already a Member?",
                                style: new TextStyle(
                                    fontSize: 16, color: Colors.grey),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(top: 6.0),
                                child: Text(
                                  "Sign In",
                                  style: new TextStyle(
                                      fontSize: 16,
                                      color: redColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "I agree to all",
                                      style: TextStyle(
                                          color: greyOneColor, fontSize: 14.0),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Terms and Conditions",
                                      style: TextStyle(
                                          color: blueTextColor, fontSize: 14.0),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "of city clinic",
                                      style: TextStyle(
                                          color: greyOneColor, fontSize: 14.0),
                                    ),
                                  ],
                                ))
                          ],
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
                            if (_formKey.currentState.validate()) {
                              _bloc.signUpData(
                                  _nameController.text.trim(),
                                  _emailController.text.trim(),
                                  _phoneController.text.toString(),
                                  _passwordController.text.toString(),
                                  "1234567890",
                                  "12345678",
                                  "234455555");
                            }
                          },
                          child: Text(
                            "SignUp",
                            style: TextStyle(color: Colors.white),
                          ),
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
