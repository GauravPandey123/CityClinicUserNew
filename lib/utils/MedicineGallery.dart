import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MedicineGallery extends StatefulWidget {
  @override
  _MedicineGalleryState createState() => _MedicineGalleryState();
}

class _MedicineGalleryState extends State<MedicineGallery> {
  final PageController controller = PageController(initialPage: 200);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250.0,
        child: Container(
          color: Colors.grey,
          child: PageView.builder(
            controller: controller,
            itemBuilder: (context, index) {
              return new Center(
                child: Image.asset(
                  "assets/images/city_clinic_image.png",
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ));
  }
}
