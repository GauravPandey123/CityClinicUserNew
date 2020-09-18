import 'package:city_clinic_user/widget/labcategories_item.dart';
import 'package:city_clinic_user/widget/top_booked_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabCategoryScreen extends StatefulWidget {
  @override
  _LabCategoryScreenState createState() => _LabCategoryScreenState();
}

class _LabCategoryScreenState extends State<LabCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: buildLabTestScreen(context),
        ),
      ),
    );
  }
}

buildLabTestScreen(BuildContext context) {
  return GridView.builder(
    padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10, bottom: 10),
    shrinkWrap: false,
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
