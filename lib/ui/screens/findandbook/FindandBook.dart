import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/medicine_catefory_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindandBook extends StatefulWidget {
  @override
  _FindandBookState createState() => _FindandBookState();
}

class _FindandBookState extends State<FindandBook> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  title: Text('Consult Online'),

                ),
                SliverList(
                    delegate: SliverChildListDelegate(
                        <Widget>[
                          new Container(
                            margin: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    height: 50,
                                    padding: EdgeInsets.fromLTRB(6.0, 0, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0)),
                                        border: Border.all(
                                            width: 1, color: greyOneColor)),
                                    child: Column(
                                      children: <Widget>[
                                        TextFormField(
                                          cursorColor: Colors.black,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: "Search",
                                            suffixIcon: SvgPicture.asset(
                                              searchIcon,
                                              height: 24,
                                              width: 18,
                                              fit: BoxFit.scaleDown,
                                            ),
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                          ),
                                          maxLines: 1,
                                        ),
                                      ],
                                    )),
                                SizedBox(height: 20,),
                                Text(
                                  "By Speciality",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: blueTextColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20),
                                buildMedicineHealth(context)
                              ],
                            ),

                          ),

                        ]
                    )
                )



              ],
            ),
          )),
    );
  }
}

buildMedicineHealth(BuildContext context) {
  return GridView.builder(
    shrinkWrap: true,
    itemCount: 10,
    physics: ClampingScrollPhysics(),
    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery
          .of(context)
          .size
          .width /
          (MediaQuery
              .of(context)
              .size
              .height / 1.6),
    ),
    itemBuilder: (context, index) {
      //final item = searchList[index];
      return MedicineCategory();
    },
  );
}


// child: SingleChildScrollView(

// ),
