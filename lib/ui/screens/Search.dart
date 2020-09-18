import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  @override
  _SearchState createState() => _SearchState();

}

class _SearchState extends State<Search>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: Container(
         margin: EdgeInsets.all(10),

       ),
     ),
   );
  }

}

