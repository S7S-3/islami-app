import 'package:flutter/material.dart';

class MyProvider{
  ThemeMode mode =ThemeMode.light;
  changeTheme(ThemeMode themeMode){
    mode = themeMode;

  }
}