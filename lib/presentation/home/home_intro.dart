import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/core/extensions/hover_extensions.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: mobileHome,
      desktop: desktopHome,
    );
  }

  Widget mobileHome(BuildContext context) {
    return Container();
  }

  Widget desktopHome(BuildContext context) {
    return Container(
      height: screenHeight(context) - 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(125),
            child: Image.asset(
              'assets/afrad-profile-pic.jpg',
              height: 250,
              width: 250,
            ),
          ),
          sizedten(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientText(
                'Hey, I\'m Afrad, ',
                colors: const <Color>[
                  Color(0xffb16cea),
                  Color(0xffFF5E69),
                  Color(0xffFFA84B)
                ],
                style: TextStyle(
                    fontSize: 50,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'A Creative Flutter',
                style: TextStyle(
                    fontSize: 50,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Text(
            'Developer from India!',
            style: TextStyle(
                fontSize: 50,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w600),
          ),
          sizedtwenty(context),
          Text(
            'I\'m a passionate mobile app developer with expertise in frontend and backend frameworks. \nBeyond coding, I create tech related contents on Instagram.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.7,
                wordSpacing: 1.5),
          ),
          sizedtwenty(context),
          sizedtwenty(context),
          ElevatedButton.icon(
              style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.all(20))),
              onPressed: () {},
              icon: const Icon(
                Icons.play_for_work_rounded,
                color: Colors.black,
              ),
              label: Text(
                'View My Resume',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w500),
              )).moveUpOnHover
        ],
      ),
    );
  }
}
