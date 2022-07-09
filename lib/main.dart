import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflz_appproject/core/colors/colors.dart';
import 'package:netflz_appproject/pressentation/main_page/screen_mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
      home:  ScreenMainPage(),
    );
  }
}
