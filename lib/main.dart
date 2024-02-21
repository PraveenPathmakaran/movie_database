import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/colors/colors.dart';
import 'presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenMainPage(),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: backgroundColor,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white)),
          fontFamily: GoogleFonts.montserrat().fontFamily),
    );
  }
}
