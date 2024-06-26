import 'package:flutter/material.dart';
import 'package:portfolio_web/presentation/contact/contact.dart';
import 'package:portfolio_web/presentation/experience/experience.dart';
import 'package:portfolio_web/presentation/home/home_intro.dart';
import 'package:portfolio_web/presentation/project/projects.dart';
import 'package:portfolio_web/presentation/home/widgets/navbar.dart';
import 'package:portfolio_web/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String route = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          color: const Color.fromRGBO(22, 21, 19, 1),
          width: screenWidth(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              NavBar(
                onHomeTap: () => scrollToSection(_homeKey),
                onProjectsTap: () => scrollToSection(_projectsKey),
                onExperienceTap: () => scrollToSection(_experienceKey),
                onContactTap: () => scrollToSection(_contactKey),
              ),
              HomeIntro(key: _homeKey),
              Projects(key: _projectsKey),
              Experience(key: _experienceKey),
              Contact(key: _contactKey),
            ],
          ),
        ),
      ),
    );
  }
}
