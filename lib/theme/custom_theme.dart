import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      iconTheme: new IconThemeData(
        color: Colors.black,
        opacity: 1.0,
        size: 50.0,
      ),
      inputDecorationTheme: new InputDecorationTheme(

        fillColor: Color.fromRGBO(149, 164, 172, 0.1),
        filled: true,
        labelStyle: TextStyle(
            fontSize: 14.0
        ),
      ),
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat',
      textTheme: TextTheme(
        bodyText1: TextStyle(fontSize: 16.0, height: 1),
      ),
    );
  }
}
