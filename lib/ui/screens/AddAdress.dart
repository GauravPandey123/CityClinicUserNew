import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  final Geolocator geolocator = Geolocator()
    ..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;
  String streetAddress;
  String locality;
  String address;
  String city;
  String state;
  String pincode;

  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _selectDateController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    height: 50,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: redColor,
                    child: Text(
                      "Use Current Location",
                      style: new TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _getCurrentLocation();
                    },
                  ),
                  Column(
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
                                decoration: InputDecoration(
                                    labelText: "Full Name"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                  cursorColor: Colors.black,
                                  keyboardType: TextInputType.text,

                                  decoration: InputDecoration(
                                      labelText: "Street"),

                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    labelText: "Locality"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Other address information",
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "City",
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "State",
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Pincode",
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FlatButton(
                                height: 50,
                                minWidth: double.infinity,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                color: blueTextColor,
                                onPressed: () {},
                                child: Text(
                                  "Add Address",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()
      ..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        _getAddressFromLatLng();
      });
    }).catchError((e) {
      print(e);
    });
  }

  Future<void> _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
            streetAddress = place.locality.toString();
        "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
}


// void _getCurrentLocation() {

// }

