import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/presentation/home/homepage.dart';
import 'package:portfolio_web/presentation/project/projects.dart';
import 'package:portfolio_web/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    GoRouter _router = GoRouter(
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: "/projects",
          builder: (context, state) => const Projects(),
        )
      ],
    );

    return MaterialApp.router(
      routerConfig: _router,
      title: 'Portfolio Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: KTextTheme.darkTextTheme,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
    );
  }
}
