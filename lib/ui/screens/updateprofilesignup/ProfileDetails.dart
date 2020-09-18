import 'package:city_clinic_user/model/verifyotp/verify_otp_response.dart';
import 'package:city_clinic_user/ui/screens/BottomTabsScreen.dart';
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
      debugShowCheckedModeBanner: false,
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

              Padding(padding: EdgeInsets.all(12),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => BottomTabsScreen()));
                },
                child: Container(
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Colors.white)
                  ),
                  child: Center(
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize:14.0,
                          fontWeight: FontWeight.w700
                          ,color: Colors.white),
                    ),
                  ),
                ),
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
            children: [ProfileDetailsAbout(widget.user), ProfileFamilyAddDetail()],
          ),
        ),
      ),
    );
  }
}