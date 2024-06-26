import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/core/extensions/hover_extensions.dart';
import 'package:portfolio_web/presentation/home/widgets/borderedbutton.dart';
import 'package:portfolio_web/presentation/home/widgets/navbutton.dart';
import 'package:portfolio_web/utils/themes.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onProjectsTap;
  final VoidCallback onExperienceTap;
  final VoidCallback onContactTap;

  const NavBar({
    super.key,
    required this.onHomeTap,
    required this.onProjectsTap,
    required this.onExperienceTap,
    required this.onContactTap,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: mobileNavBar,
      desktop: desktopNavBar,
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
          Text('AF', style: TextStyle(fontFamily: GoogleFonts.montserrat().fontFamily, fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navButton('Home', context, widget.onHomeTap),
              navButton('Projects', context, widget.onProjectsTap),
              navButton('Experience', context, widget.onExperienceTap),
              navButton('Contact', context, widget.onContactTap),
            ],
          ),
          BorderedButton(onPressed: widget.onContactTap),
        ],
      ),
    );
  }
}
