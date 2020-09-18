import 'package:city_clinic_user/model/verifyotp/verify_otp_response.dart';
import 'package:city_clinic_user/ui/screens/BottomTabsScreen.dart';
import 'package:city_clinic_user/ui/screens/updateprofilesignup/bloc/UpdateProfileDetailBloc.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/AppUtils.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/rounded_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ProfileDetailsAbout extends StatefulWidget {
  User user;
  ProfileDetailsAbout(this.user);
  @override
  _ProfileDetailsAboutState createState() => _ProfileDetailsAboutState();
}

class _ProfileDetailsAboutState extends State<ProfileDetailsAbout> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  TextEditingController selectedDateTextField = TextEditingController();
  String selectedDate;
  String genderValue = "female";

  List<String> _dropdownItems = [
    "Mehrauli", "Bankner", "Bhor Garh", "Tikri Khurd", "Tukhmirpur",
    "Begum Pur", "Bakkar Wala", "Fatehpur Ber", "Saidul Azaib", "Tigri",
    "Kotla Mahigiran", "Sultanpur"
  ];
  List<String> _countryDropDownItems = ["India", "USA", "Columbia"];
  List<String> _nationalityDropDownItems = ['Indian', 'Australian', 'Algerian'];
  String _selectedCity, _selectedCountry, _selectedNationality;


  final UpdateProfileDetailBloc _updateProfileDetailBloc =
      UpdateProfileDetailBloc();
  DateTime currentDate = DateTime.now();
  var myFormat = DateFormat('yyyy-MM-dd');
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passXYZIDController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _localityController = TextEditingController();
  final TextEditingController _addressline1Controller = TextEditingController();
  final TextEditingController _addressline2Controller = TextEditingController();
  final TextEditingController _selectCityController = TextEditingController();
  final TextEditingController _selectCountryController =
      TextEditingController();

  @override
  void initState() {
    super.initState();

setState(() {
  selectedDateTextField.text = "${myFormat.format(currentDate)}";
  selectedDate = myFormat.format(currentDate);
  _selectedCity = _dropdownItems[0];
  _selectedCountry = _countryDropDownItems[0];
  _selectedNationality = _nationalityDropDownItems[0];
});
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
                        Container(
                          width: double.infinity,
                          height: 160,
                          child: Stack(
                            children: [
                              /*Positioned(
                                  child: Container(
                                    height: 180,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF2F2F2), //new Color.fromRGBO(255, 0, 0, 0.0),
                                        borderRadius: new BorderRadius.all(Radius.circular(8.0))
                                    ),
                                    child: Stack(
                                      //alignment:new Alignment(x, y)
                                      children: <Widget>[
                                        Positioned(
                                          child: Center(
                                            child: SvgPicture.asset(doctorBannerBGImage, height:48, width:48,),
                                          ),
                                        ),
                                        Positioned(
                                          child: new Align(
                                              alignment: FractionalOffset.bottomCenter,
                                              child: Container(
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF777777), //new Color.fromRGBO(255, 0, 0, 0.0),
                                                    borderRadius: new BorderRadius.only(
                                                        bottomLeft:Radius.circular(8.0),
                                                        bottomRight: Radius.circular(8.0))
                                                ),
                                                child:  Center(
                                                  child: Icon(Icons.camera_alt_outlined, color: Colors.white,size: 18,),
                                                ),
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                  )),*/
                              Positioned(
                                child: Align(
                                  alignment: FractionalOffset.center,
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    margin: EdgeInsets.only(right: 8),
                                    color: Color(0xFFF2F2F2),
                                    child: Center(
                                      child: SvgPicture.asset(home_account, height:40, width:40,),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                        SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          controller: _passXYZIDController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Passport / Civil ID",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                          validator: (v) {
                            if (v.isEmpty) {
                              return 'Passport / Civil ID is required';
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
                                child: InkWell(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                        color: genderValue == "male"?blueTextColor:Colors.transparent,
                                        border: Border.all(
                                            width: 1, color: genderValue == "male"?Colors.transparent:blueTextColor),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    child: Text(
                                      "Male",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: genderValue == "male"?Colors.white:blueTextColor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      genderValue = "male";
                                    });
                                  },
                                )),
                            SizedBox(width: 20),
                            Expanded(
                                child: InkWell(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10.0),
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                        color: genderValue == "female"?blueTextColor:Colors.transparent,
                                        border: Border.all(
                                            width: 1, color: genderValue == "female"?Colors.transparent:blueTextColor),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                    child: Text(
                                      "Female",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: genderValue == "female"?Colors.white:blueTextColor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      genderValue = "female";
                                    });
                                  },
                                )),
                          ],
                        ),
                        SizedBox(height: 14),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 8),
                                    child: Text("Date of Birth",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16
                                      ),),),
                                  SizedBox(height: 8,),
                                  Container(
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: <Widget>[
                                        TextFormField(
                                          // enabled: false,
                                            controller: selectedDateTextField,
                                            keyboardType: TextInputType.datetime,
                                            style: Theme.of(context).textTheme.body1,
                                            // obscureText: true,
                                            decoration: InputDecoration(
                                                contentPadding: const EdgeInsets.fromLTRB(12, 6, 48, 6),
                                                border: OutlineInputBorder(
                                                  borderRadius: const BorderRadius.all(
                                                    const Radius.circular(25.0),
                                                  ),
                                                ),
                                                filled: true,
                                                hintStyle: new TextStyle(color: Colors.grey[800]),
                                                hintText: "-Select Date-",
                                                fillColor: Colors.white70)
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.calendar_today, color: blueTextColor),
                                          onPressed: () async{
                                            DateTime toDate = DateTime(1960);
                                            FocusScope.of(context).requestFocus(new FocusNode());

                                            toDate = await showDatePicker(
                                                context: context,
                                                initialDate:DateTime.now(),
                                                firstDate:DateTime(1960),
                                                lastDate: DateTime(2025));

                                            if (toDate != null) /* && date != selectedDate*/
                                              setState(() {
                                                selectedDate = myFormat.format(toDate);
                                                print(selectedDate);
                                                selectedDateTextField.text = selectedDate;
                                              });
                                          },
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text("Nationality", /*textDirection: TextDirection.ltr,*/
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                          color: Color(0xFFF2F2F2),
                                          border: Border.all(width: 1, color: Colors.grey)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                            value: _selectedNationality,
                                            items: _nationalityDropDownItems.map((location) {
                                              return DropdownMenuItem(
                                                child: new Text(location),
                                                value: location,
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedNationality = value;
                                              });
                                            }),
                                      ),
                                    ),
                                  ],
                                ),
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
                                controller: _localityController,
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Area/Locality",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return 'Area/Locality is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text("Select City", /*textDirection: TextDirection.ltr,*/
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                          color: Color(0xFFF2F2F2),
                                          border: Border.all(width: 1, color: Colors.grey)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                            value: _selectedCity,
                                            items: _dropdownItems.map((location) {
                                              return DropdownMenuItem(
                                                child: new Text(location),
                                                value: location,
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedCity = value;
                                              });
                                            }),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text("Select City", /*textDirection: TextDirection.ltr,*/
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(height: 6,),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25.0),
                                          color: Color(0xFFF2F2F2),
                                          border: Border.all(width: 1, color: Colors.grey)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                            value: _selectedCountry,
                                            items: _countryDropDownItems.map((location) {
                                              return DropdownMenuItem(
                                                child: new Text(location),
                                                value: location,
                                              );
                                            }).toList(),
                                            onChanged: (value) {
                                              setState(() {
                                                _selectedCountry = value;
                                              });
                                            }),
                                      ),
                                    ),
                                  ],
                                ),
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
                                        _nameController.text.toString(),
                                        _emailController.text.toString(),
                                        _mobileController.text.toString(),
                                        genderValue,
                                        selectedDate.toString(),
                                        _passXYZIDController.text.toString(),
                                        _selectedNationality,
                                        _heightController.text.toString(),
                                        _weightController.text.toString(),
                                        _addressline1Controller.text.toString(),
                                        _addressline2Controller.text.toString(),
                                        _localityController.text.toString(),
                                        _selectedCountry,
                                        _selectedCity,
                                        widget.user.accessToken.toString(),
                                        widget.user.userId.toString());
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
