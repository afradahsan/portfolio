import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/presentation/home/homepage.dart';
import 'package:portfolio_web/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Web',
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: KTextTheme.darkTextTheme,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const HomePage()
    );
  }
}