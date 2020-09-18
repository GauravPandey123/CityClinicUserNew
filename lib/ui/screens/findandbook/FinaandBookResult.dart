import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/findandbook_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class FinaandBookResult extends StatefulWidget {
  @override
  _FinaandBookResultState createState() => _FinaandBookResultState();
}

class _FinaandBookResultState extends State<FinaandBookResult> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    height: 50,
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.fromLTRB(6.0, 0, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(width: 1, color: greyOneColor)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 10),
                buildfindabookData(context)
              ],
            ),
          ),
        ),
    );
  }
}

buildfindabookData(BuildContext context) {
  return Container(
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return FindandBookItem();
      },
    ),
  );
  // return Scaffold(
}
