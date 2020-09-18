import 'package:city_clinic_user/model/verifyotp/verify_otp_response.dart';
import 'package:city_clinic_user/ui/screens/BottomTabsScreen.dart';
import 'package:city_clinic_user/ui/screens/updateprofilesignup/bloc/UpdateProfileDetailBloc.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/AppUtils.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ProfileDetailsAbout extends StatefulWidget {
  @override
  _ProfileDetailsAboutState createState() => _ProfileDetailsAboutState();
}

class _ProfileDetailsAboutState extends State<ProfileDetailsAbout> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final UpdateProfileDetailBloc _updateProfileDetailBloc =
      UpdateProfileDetailBloc();
  DateTime selectedDate = DateTime.now();
  var myFormat = DateFormat('yyyy-MM-dd');
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _addressline1Controller = TextEditingController();
  final TextEditingController _addressline2Controller = TextEditingController();
  final TextEditingController _selectCityController = TextEditingController();
  final TextEditingController _selectCountryController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _updateProfileDetailBloc.updateProfileStream.listen((event) {
      if (event.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => (BottomTabsScreen())));
      } else {
        print(event.message);
      }
    });

    _updateProfileDetailBloc.loadingStream.listen((event) {
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
    _updateProfileDetailBloc.dispose();
    _nameController.dispose();
    _mobileController.dispose();
    _emailController.dispose();
    _dateController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _addressline1Controller.dispose();
    _addressline2Controller.dispose();
    _selectCityController.dispose();
    _selectCountryController.dispose();
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
                          decoration: InputDecoration(
                            labelText: "Full Name",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
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
                          height: 14,
                        ),
                        TextFormField(
                          controller: _mobileController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Mobile Number",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
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
                          height: 14,
                        ),
                        TextFormField(
                          controller: _emailController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Email Id",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                          validator: (v) {
                            if (v.isEmpty) {
                              return 'Email id  is required';
                            }

                            String pattern =
                                (r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                            RegExp regExp = new RegExp(pattern);
                            if (!regExp.hasMatch(v)) {
                              return 'Please enter valid email id';
                            }
                            return null;
                          },
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 14.0),
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Gender",
                            style: new TextStyle(
                              fontSize: 16,
                              color: blackOneColor,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(top: 10.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: blueTextColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                            SizedBox(width: 20),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(top: 10.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: blueTextColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                          ],
                        ),
                        SizedBox(height: 14),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _dateController,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,

                                decoration: InputDecoration(
                                  labelText: " - Select Date - ",
                                  hintStyle: TextStyle(color: Colors.grey),

                                  filled: true,
                                  suffixIcon: IconButton(
                                    icon: new Icon(
                                      Icons.date_range,
                                    ),
                                    onPressed: () async {
                                      DateTime date = DateTime(1900);
                                      FocusScope.of(context)
                                          .requestFocus(new FocusNode());

                                      date = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime(2100));

                                      if (date != null && date != selectedDate)
                                        setState(() {
                                          selectedDate = date;
                                          print(
                                              '${myFormat.format(selectedDate)}');
                                          _dateController.text =
                                              '${myFormat.format(selectedDate)}';
                                        });
                                    },
                                  ),
                                  fillColor: Colors.white70,
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return 'Date of birth is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _heightController,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Height",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return 'Height is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _weightController,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Weight",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return 'Weight is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _addressline1Controller,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Address Line 1",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return 'Address is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _addressline2Controller,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Address Line 2",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return 'Address is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _selectCityController,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Select City",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return 'City is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _selectCountryController,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Select Country",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return 'Country is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 30),
                              FlatButton(
                                height: 50,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                color: blueTextColor,
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    _updateProfileDetailBloc.updateProfileData(
                                        "abc",
                                        "abc@gmail.com",
                                        "9953502690",
                                        "Male",
                                        "1993-05-04",
                                        "1",
                                        "1",
                                        "5.6",
                                        "12",
                                        "C12 Rama Park",
                                        "Dwarka",
                                        "Dwarka",
                                        "1",
                                        "1",
                                        "8287265605ea241eae622f3.19777511",
                                        "2");
                                  }
                                },
                                child: Text(
                                  "Save",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
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
