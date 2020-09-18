import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';

class MedicineHealthTrendingItem extends StatefulWidget {
  @override
  _MedicineHealthTrendingItemState createState() =>
      _MedicineHealthTrendingItemState();
}

class _MedicineHealthTrendingItemState
    extends State<MedicineHealthTrendingItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: dividerColor),
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
