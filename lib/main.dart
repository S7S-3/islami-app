import 'package:flutter/material.dart';
import 'package:untitled/hadeth_details.dart';
import 'package:untitled/home.dart';
import 'package:untitled/my_theme_data.dart';
import 'package:untitled/sura_details.dart';
import 'package:untitled/x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: mode == 'Light'?ThemeMode.light :ThemeMode.dark,
      theme:MyThemeData.LightTheme,
      darkTheme:MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen .routeName: (context) => HadethDetailsScreen(),

      },
    );
  }
}
