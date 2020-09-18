import 'package:city_clinic_user/ui/screens/LabCategoryScreen.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/LabcategoryItem.dart';
import 'package:city_clinic_user/widget/labcategories_item.dart';
import 'package:city_clinic_user/widget/top_booked_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LabTestScreen extends StatefulWidget {
  @override
  _LabTestScreenState createState() => _LabTestScreenState();
}

class _LabTestScreenState extends State<LabTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset("assets/images/city_clinic_image.png"),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Lab Tests By Department",
                            style:
                                TextStyle(fontSize: 16, color: blueTextColor),
                          ),
                          Text(
                            "View All >",
                            style:
                                TextStyle(fontSize: 16, color: blueTextColor),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LabCategoryScreen())),
                        },
                        child: Container(
                            padding: EdgeInsets.all(10.0),
                            height: 120,
                            child: buildDashBoardData(context)),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Top Booked Tests",
                            style:
                                TextStyle(fontSize: 16, color: blueTextColor),
                          ),
                          Text(
                            "View All >",
                            style:
                                TextStyle(fontSize: 16, color: blueTextColor),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 400,
                        width: double.infinity,
                        child: buildLabTestScreen(context),
                      ),
                      SizedBox(height: 10),
                    ],
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

buildLabTestScreen(BuildContext context) {
  return GridView.builder(
    padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10, bottom: 10),
    shrinkWrap: true,
    physics: ScrollPhysics(),
    itemCount: 10,
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height / 1.6),
    ),
    itemBuilder: (context, index) {
      //final item = searchList[index];
      return TopBookedListItem();
    },
  );
}

buildDashBoardData(BuildContext context) {
  return Container(
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return LabCategoryItem();
      },
    ),
  );
  // return Scaffold(
}
