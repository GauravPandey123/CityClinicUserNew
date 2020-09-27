import 'dart:collection';

import 'package:city_clinic_user/ui/screens/Cart.dart';
import 'package:city_clinic_user/ui/screens/Dashboard.dart';
import 'package:city_clinic_user/ui/screens/Orders.dart';
import 'package:city_clinic_user/ui/screens/Search.dart';
import 'package:city_clinic_user/ui/screens/User_Profiles.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:city_clinic_user/ui/screens/notifications/Notifications.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey();
  ListQueue<int> _navigationQueue = ListQueue();
  int _selectedIndex = 0;

  List<String> _bottomPagesTitle = [
    "City Clinic", "My Order", "Search", "My Cart", "My Profile"
  ];

  List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Orders(),
    Search(),
    Cart(),
    UserProfiles()
  ];


  @override
  Widget build(BuildContext context) {
    return  WillPopScope(child: Scaffold (
      backgroundColor: Colors.white,
      key: _globalKey,
      appBar: AppBar(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(14),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white,),
            onPressed: (){
              _globalKey.currentState.openDrawer();
            },
          ),
          title: Text(_bottomPagesTitle.elementAt(_selectedIndex),
            style: TextStyle(
                fontSize: 18
            ),),
          //Ternery operator use for condition check
          elevation:
          defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
          centerTitle: _selectedIndex == 0 ? true : false,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Notifications()));
              },
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        elevation: 16,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kAuthTextGreyColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(homeImage, height:24, width:24),
            activeIcon: SvgPicture.asset(homeImage, height:24, width:24, color: kPrimaryColor,),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(orderImage, height:24, width:24),
            activeIcon: SvgPicture.asset(orderImage, height:24, width:24, color: kPrimaryColor,),
            title: Text("Orders"),),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(searchImage, height:24, width:24),
            activeIcon: SvgPicture.asset(searchImage, height:24, width:24, color: kPrimaryColor,),
            title: Text("Search"),),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(cartImage, height:24, width:24),
            activeIcon: SvgPicture.asset(cartImage, height:24, width:24, color: kPrimaryColor,),
            title: Text("My Cart"),),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(profile1Image, height:24, width:24),
            activeIcon: SvgPicture.asset(profile1Image, height:24, width:24, color: kPrimaryColor,),
            title: Text("My Profile"),),
        ],
        onTap: onTabTapped,

      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    ),
        onWillPop: () async{
          if(_navigationQueue.isEmpty)
            return true;

          setState(() {
            _selectedIndex = _navigationQueue.last;
            _navigationQueue.removeLast();
          });
          return false;
        });

  }

  //dashboard screen onTabTapped
  void onTabTapped(int index) {
    _navigationQueue.addLast(index);
    setState(() {
      _selectedIndex = index;
    });
  }

 /*
   PageController _pageController;
  int _page = 0;
  List icons = [
    Icons.home,
    Icons.label,
    Icons.add,
    Icons.notifications,
    Icons.person,
  ];



  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  buildTabIcon(int index) {
    if (index == 2) {
      return IconButton(
        icon: Icon(
          icons[index],
          size: 24.0,
          color: Colors.transparent,
        ),
        onPressed: null,
      );
    } else {
      return IconButton(
        icon: Icon(
          icons[index],
          size: 24.0,
        ),
        color: _page == index
            ? Theme
            .of(context)
            .accentColor
            : Theme
            .of(context)
            .textTheme
            .caption
            .color,
        onPressed: () => _pageController.jumpToPage(index),
      );
    }
  }*/

}
