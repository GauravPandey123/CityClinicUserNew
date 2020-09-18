import 'package:city_clinic_user/model/verifyotp/verify_otp_response.dart';
import 'package:city_clinic_user/ui/screens/updateprofilesignup/ProfileDeatilsAbout.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProfileDetailFamilyMember.dart';
import 'ProfileFamilyAddDetail.dart';

class ProfileDetails extends StatefulWidget {
  User user;

  ProfileDetails({Key key, @required this.user}) : super(key: key);

  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: blueTextColor,
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            actions: [
              FlatButton(
                  onPressed: null,
                  height: 30,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize:16.0,color: Colors.white),
                  ))
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: "About",
                ),
                Tab(
                  text: "Family Member",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [ProfileDetailsAbout(), ProfileFamilyAddDetail()],
          ),
        ),
      ),
    );
  }
}
