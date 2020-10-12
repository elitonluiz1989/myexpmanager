import 'package:flutter/material.dart';
import 'package:myexpmanager/themes/default/DefaultThemeColors.dart';

ThemeData defaultTheme() {
  return ThemeData(
    primaryColor: DefaultThemeColors.first,
    accentColor: DefaultThemeColors.second,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: DefaultThemeColors.fourth
      ),
      bodyText2: TextStyle(
        color: DefaultThemeColors.fourth
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: DefaultThemeColors.fourth,
          fontSize: 18
        )
      )
    ),
    scaffoldBackgroundColor:  DefaultThemeColors.first,
  );
}