import 'package:city_clinic_user/ui/screens/VisitAddress.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/BookLabTestItem.dart';
import 'package:city_clinic_user/widget/MorningSlotsItem.dart';
import 'package:city_clinic_user/widget/bookslottimeitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookAppointment extends StatefulWidget {
  static const routeName = '/book_appointment';

  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(iconsProfile, height: 80, width: 80),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          ("Dr. Name"),
                          style:
                              TextStyle(fontSize: 20.0, color: blackOneColor),
                        ),
                        SizedBox(width: 10),
                        Text(
                          ("Qualification Details"),
                          style: TextStyle(fontSize: 16.0, color: greyOneColor),
                        ),
                        SizedBox(width: 6),
                        Text(
                          ("Speciality"),
                          style: TextStyle(fontSize: 16.0, color: greyOneColor),
                        ),
                        SizedBox(width: 6),
                        Text(
                          ("Years Exp. : 4yrs"),
                          style: TextStyle(fontSize: 16.0, color: greyOneColor),
                        ),
                        SizedBox(width: 10),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Divider(height: 1, color: dividerColor, thickness: 2),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Select Visit Type",
                      style: TextStyle(fontSize: 18.0, color: blueTextColor),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Visit Type",
                      style: TextStyle(fontSize: 18.0, color: blackOneColor),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(height: 1, color: dividerColor, thickness: 2),
                SizedBox(height: 10),
                Text("Select Consultation For Whom",
                    style: TextStyle(fontSize: 16.0, color: blueTextColor)),
                SizedBox(height: 10),
                Text("Members",
                    style: TextStyle(fontSize: 14.0, color: blackOneColor)),
                SizedBox(height: 10),
                SizedBox(height: 10),
                FlatButton(
                  height: 50,
                  minWidth: double.maxFinite,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: blueTextColor, width: 2),
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {},
                  child: Text(
                    "+Add a New Member",
                    style: TextStyle(color: blueTextColor, fontSize: 16.0),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(height: 1, color: dividerColor, thickness: 2),
                SizedBox(
                  height: 20,
                ),
                Text("Select Date & Slot Time",
                    style: TextStyle(fontSize: 16.0, color: blueTextColor)),
                Container(child: buildAppointData(context)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(morningImage,
                        height: 40, width: 40, fit: BoxFit.cover),
                    SizedBox(width: 20),
                    Text("Morning",
                        style: TextStyle(fontSize: 16.0, color: blackOneColor)),
                  ],
                ),
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  child: buildBookAppointment(context),
                ),
                SizedBox(
                  height: 20,
                ),
                // Row(
                //   children: <Widget>[
                //     SvgPicture.asset(afternoon,
                //         height: 40, width: 40, fit: BoxFit.cover),
                //     SizedBox(width: 20),
                //     Text("Afternoon",
                //         style: TextStyle(fontSize: 16.0, color: blackOneColor)),
                //   ],
                // ),
                // Container(
                //   height: MediaQuery.of(context).size.height,
                //   width: MediaQuery.of(context).size.width,
                //   child: buildBookAppointment(context),
                // ),
                // SizedBox(height: 20,),
                // Row(
                //   children: <Widget>[
                //     SvgPicture.asset(moonImage,
                //         height: 40, width: 40, fit: BoxFit.cover),
                //     SizedBox(width: 20),
                //     Text("Evening",
                //         style: TextStyle(fontSize: 16.0, color: blackOneColor)),
                //   ],
                // ),
                // Container(
                //   height: MediaQuery.of(context).size.height,
                //   width: MediaQuery.of(context).size.width,
                //   child: buildBookAppointment(context),
                // ),
                SizedBox(height: 10),
                FlatButton(
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: blueTextColor,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VisitAddress()));
                  },
                  child: Text(
                    "Proceed",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

buildAppointData(BuildContext context) {
  return Container(
    height: 100,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return BookSlotTimeItem();
      },
    ),
  );
}

buildBookAppointment(BuildContext context) {
  return GridView.builder(
    shrinkWrap: true,
    itemCount: 10,
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 1.6,

    ),
    itemBuilder: (context, index) {
      //final item = searchList[index];
      return MorningSlotsItem();
    },
  );
}
