import 'package:flutter/material.dart';
import 'package:portfolio_web/presentation/experience/experience.dart';
import 'package:portfolio_web/presentation/home/home_intro.dart';
import 'package:portfolio_web/presentation/project/projects.dart';
import 'package:portfolio_web/presentation/home/widgets/navbar.dart';
import 'package:portfolio_web/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(22, 21, 19, 1),
          width: screenWidth(context),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [NavBar(), HomeIntro(), Projects(), Experience()],
          ),
        ),
      ),
    );
  }
}
