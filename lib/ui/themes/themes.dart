import 'package:flutter/material.dart';

class CustomThemes {
  
  static List<ThemeData> themes = [
    ThemeData(
      primarySwatch: Colors.green,
      textTheme: errorTextTheme()
    ),
    ThemeData(
      primarySwatch: Colors.deepPurple,
       textTheme: errorTextTheme()
    ),
    ThemeData(
      primarySwatch: Colors.deepOrange,
       textTheme: errorTextTheme()
    ),
    ThemeData(
      primarySwatch: Colors.blue,
       textTheme: errorTextTheme()
    ),
  ];

  static TextTheme errorTextTheme<Widget>() {
    return const TextTheme(
        headline6: 
        TextStyle(
            fontSize: 15, 
            color: Colors.red, 
            fontWeight: FontWeight.w700),);
  }
}
