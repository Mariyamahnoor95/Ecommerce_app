import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xFFFE3C5B),
      primaryColorDark: Color(0xCCC30724),
      primaryColorLight: Color(0xCCD35568),
      scaffoldBackgroundColor: Colors.grey[100],
      fontFamily: 'ShantellSans',
      textTheme:  const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF1B070B),
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
          displayMedium: TextStyle(
            color: Color(0xFF1B070B),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          displaySmall: TextStyle(color: Color(0xFF1B070B),
            fontWeight: FontWeight.bold , fontSize: 18,),
          headlineMedium: TextStyle(color: Color(0xFF1B070B),
            fontWeight: FontWeight.bold , fontSize:16 ,),
          headlineSmall: TextStyle(color: Color(0xFF1B070B),
            fontWeight: FontWeight.bold , fontSize: 16,),
          titleLarge: TextStyle(color: Color(0xFF1B070B),
            fontWeight: FontWeight.normal , fontSize: 17,),
          bodyLarge: TextStyle(color: Color(0xFF1B070B),
            fontWeight: FontWeight.normal , fontSize: 15,),
          bodyMedium: TextStyle(color: Color(0xFF1B070B),
            fontWeight: FontWeight.normal , fontSize: 10,)),
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: const MaterialColor(0xFFFE3C5B, <int, Color>{
        50: Color(0x1AFE3C5B),
        100: Color(0x33FE3C5B),
        200: Color(0x66FE3C5B),
        300: Color(0xCCD35568),
        400: Color(0xCCCA2B43),
        500: Color(0xFFFE3C5B),
        600: Color(0xCCCA1E38),
        700: Color(0xCCC30724),
        800: Color(0xCC86081C),
        900: Color(0xCC3E050E)
      })).copyWith(background: Color(0xFFF5F5F5)));
}
