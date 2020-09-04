import 'package:flutter/material.dart';

ThemeData myThemeData = ThemeData(
  primaryColor: Colors.pink,
  accentColor: Colors.yellow[700],
  canvasColor: Color.fromRGBO(255, 254, 229, 1),
  fontFamily: "Anton",
  textTheme: ThemeData.light().textTheme.copyWith(
        body1: TextStyle(
          color: Color.fromRGBO(20, 51, 51, 1),
        ),
        body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
        title: TextStyle(
          fontSize: 15,
          color: Colors.black,
          // fontFamily:"Anton", 
          fontWeight: FontWeight.bold,
        ),
        subtitle: TextStyle(
          fontSize: 15,
          
          color: Colors.white,
          // fontFamily:"Anton", 
          fontWeight: FontWeight.bold,
        ),
      ),
);
