import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindandBookDetail extends StatefulWidget {
  @override
  _FindandBookDetailState createState() => _FindandBookDetailState();
}

class _FindandBookDetailState extends State<FindandBookDetail> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              title: Text('Find a Doctor'),
            ),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "assets/images/city_clinic_image.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
// Stack(
//   children: <Widget>[
//     SvgPicture.asset(imageIcon,height: 120,width: 120,),
//     Positioned(child: null)
// )
// CircleAvatar(
//   backgroundColor: greyOneColor,
//
//   child: SvgPicture.asset(cartImage),
// )
                      Container(
                        padding: EdgeInsets.all(16),
                        width: 90,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade200),
                        child: SvgPicture.asset(profile1Image),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Dr. Name",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: blueTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Qualification Details",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: normaltextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Speciality",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: normaltextColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Years Exp. : 4yrs",
                            style: TextStyle(
                                fontSize: 14.0,
                                color: normaltextColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 1, thickness: 2, color: dividerColor),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Skills",
                    style: TextStyle(fontSize: 18.0, color: blueTextColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eleifend diam dictumst pellentesque in tellus.",
                    style: TextStyle(fontSize: 14.0, color: normaltextColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(height: 1, thickness: 2, color: dividerColor),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Education",
                    style: TextStyle(fontSize: 18.0, color: blueTextColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eleifend diam dictumst pellentesque in tellus.",
                    style: TextStyle(fontSize: 14.0, color: normaltextColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Divider(height: 1, thickness: 2, color: dividerColor),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Clinic Address",
                    style: TextStyle(fontSize: 18.0, color: blueTextColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _center,
                        zoom: 11.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "2nd Block, 1st Cross, Rammurthy Nagar, Bangalore - 560016",
                    style: TextStyle(fontSize: 18.0, color: blackOneColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            clockIcon,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Aviliable To Home Visit : Yes",
                            style:
                                TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                        width: 20,
                      ),
                      Text(
                        "10 AM - 6 AM",
                        style:
                            TextStyle(fontSize: 16.0, color: normaltextColor),
                      ),
                      SizedBox(
                        height: 10,
                        width: 20,
                      ),
                      Text(
                        "10 AM - 6 AM",
                        style:
                            TextStyle(fontSize: 16.0, color: normaltextColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 1, thickness: 2, color: dividerColor),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            clockIcon,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Aviliable To Home Visit : Yes",
                            style:
                                TextStyle(fontSize: 16.0, color: blackOneColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                        width: 20,
                      ),
                      Text(
                        "10 AM - 6 AM",
                        style:
                            TextStyle(fontSize: 16.0, color: normaltextColor),
                      ),
                      SizedBox(
                        height: 10,
                        width: 20,
                      ),
                      Text(
                        "10 AM - 6 AM",
                        style:
                            TextStyle(fontSize: 16.0, color: normaltextColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 14.0),
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: blueTextColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "Consult Online",
                          style:
                              TextStyle(fontSize: 16.0, color: blueTextColor),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14.0),
                        padding: EdgeInsets.fromLTRB(10.0, 16.0, 10.0, 16.0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: blueTextColor),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: blueTextColor), // make rounded corner of border),
                        child: Text(
                          "Book Appointment",
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 1, color: dividerColor, thickness: 2),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Education",
                    style: TextStyle(color: blueTextColor, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        chatIcon,
                        height: 20,
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Chat Consultant",
                            style:
                                TextStyle(fontSize: 18.0, color: blackOneColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet",
                            style: TextStyle(
                                fontSize: 16.0, color: normaltextColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 1, color: dividerColor, thickness: 2),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        videoChatIcon,
                        height: 20,
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Chat Consultant",
                            style:
                                TextStyle(fontSize: 18.0, color: blackOneColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet",
                            style: TextStyle(
                                fontSize: 16.0, color: normaltextColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 1, color: dividerColor, thickness: 2),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset(
                        audioConsultIcon,
                        height: 20,
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Chat Consultant",
                            style:
                                TextStyle(fontSize: 18.0, color: blackOneColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, ",
                            style: TextStyle(
                                fontSize: 16.0, color: normaltextColor),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(height: 1, color: dividerColor, thickness: 2),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
