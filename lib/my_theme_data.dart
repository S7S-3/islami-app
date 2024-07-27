import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/app_colors.dart';

class MyThemeData {
  static ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          size: 30,
          color: Color(0xFF242424),
        ),
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color(0xFF242424))),
    dividerTheme: DividerThemeData(
      color: Color(0xFFB7935F),
      thickness: 3,
    ),
    iconTheme: IconThemeData(color: AppColors.primary),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold, fontSize: 30, color: Color(0xFF242424)),
      bodyMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.w500, fontSize: 25, color: Color(0xFF242424)),
      bodySmall: GoogleFonts.elMessiri(
          fontWeight: FontWeight.normal,
          fontSize: 20,
          color: Color(0xFF242424)),
    ),
    colorScheme: ColorScheme(
      brightness:Brightness.light,
      primary:AppColors.primary,
      onPrimary:AppColors.primary,
      secondary:AppColors.primary,
      onSecondary:AppColors.primary,
      error:AppColors.primary,
      onError:AppColors.primary,
      background:AppColors.primary,
      onBackground:AppColors.primary,
      surface:AppColors.primary,
      onSurface:AppColors.primary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );
  static ThemeData darkTheme = ThemeData(  scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          size: 30,
          color: Colors.white,
        ),
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white)),
    dividerTheme: DividerThemeData(
      color: AppColors.yellowColor,
      thickness: 3,
    ),
    iconTheme: IconThemeData(color: AppColors.yellowColor),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
      bodyMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.w500, fontSize: 25, color: Colors.yellow),
      bodySmall: GoogleFonts.elMessiri(
          fontWeight: FontWeight.normal,
          fontSize: 20,
          color: Colors.white),
    ),
    colorScheme: ColorScheme(
      brightness:Brightness.light,
      primary:AppColors.primary,
      onPrimary:AppColors.primary,
      secondary:AppColors.primary,
      onSecondary:AppColors.primary,
      error:AppColors.primary,
      onError:AppColors.primary,
      background:AppColors.primary,
      onBackground:AppColors.primary,
      surface:AppColors.primary,
      onSurface:AppColors.primary,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryDark,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.yellowColor,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),);
}
