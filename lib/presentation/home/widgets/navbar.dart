import 'package:flutter/material.dart';
import 'package:portfolio_web/presentation/home/widgets/borderedbutton.dart';
import 'package:portfolio_web/presentation/home/widgets/navbutton.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: mobileNavBar,
        desktop: desktopNavBar
        // tablet: ,
        );
  }

  Widget mobileNavBar(BuildContext context) {
    return Container();
  }

  Widget desktopNavBar(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('AF'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navButton('Home'),
              navButton('Projects'),
              navButton('Experience'),
              navButton('About'),
            ],
          ),
          const BorderedButton()
        ],
      ),
    );
  }
}