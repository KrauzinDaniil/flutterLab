import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontFamily: 'SfProDisplay', fontSize: 24, fontWeight:FontWeight.bold),
    bodyLarge: TextStyle(fontFamily: 'SfProText', fontSize: 16, letterSpacing: 0.4, fontWeight: FontWeight.w500),
    
  ),
  primaryColor: Color(0xFF08A652),
  secondaryHeaderColor:Color(0xFF068441),
  hoverColor: Color(0xFFd4fadf)    
);