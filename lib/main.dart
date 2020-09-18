import 'package:city_clinic_user/ui/screens/AddAdress.dart';
import 'package:city_clinic_user/ui/screens/BottomTabsScreen.dart';
import 'package:city_clinic_user/ui/screens/Dashboard.dart';
import 'package:city_clinic_user/ui/screens/login/Login-Screen.dart';
import 'package:city_clinic_user/ui/screens/MainScreen.dart';
import 'package:city_clinic_user/ui/screens/updateprofilesignup/ProfileDetails.dart';
import 'package:city_clinic_user/ui/screens/signup/Signup.dart';
import 'package:city_clinic_user/ui/screens/splash/Splash.dart';
import 'package:city_clinic_user/ui/screens/User_Profiles.dart';
import 'package:city_clinic_user/ui/screens/findandbook/FindandBookDetail.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/OrderDeatilsItem.dart';
import 'package:city_clinic_user/widget/findandbook_item.dart';
import 'package:city_clinic_user/widget/health_articles_item.dart';
import 'package:city_clinic_user/widget/mycart_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'City Clinic User App',
        theme: ThemeData(
          primaryColor: blueTextColor,
        ),
        home: SignUp());
  }
}

class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>().restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  @override
  void initState() {
    super.initState();
  }

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
