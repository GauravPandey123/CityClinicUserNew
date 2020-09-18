import 'package:city_clinic_user/widget/NoitficationItem.dart';
import 'package:flutter/cupertino.dart';

class Notification extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: <Widget>[buildNotificationData(context)],
      ),
    );
  }
}

buildNotificationData(BuildContext context) {
  return Container(
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return NotificationItem();
      },
    ),
  );
  // return Scaffold(
}
