import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/core/extensions/hover_extensions.dart';
import 'package:portfolio_web/presentation/project/widgets/project_container.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool isHovering = false;
  bool isHovering2 = false;
  bool isHovering3 = false;
  bool isHovering4 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: Column(
        children: [
          GradientText('EXPERIENCED IN.',
              colors: [Color(0xfffdfdfd), Color(0xffffffff).withOpacity(0.3)],
              gradientDirection: GradientDirection.ttb,
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 8)),
          sizedtwenty(context),
          sizedtwenty(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/flutter-glyph-logo.png',
                height: 35,
              ).moveUpOnHover,
              sizedwtwenty(context),
              sizedwtwenty(context),
              Image.asset(
                'assets/firebase.png',
                height: 35,
              ).moveUpOnHover,
              sizedwtwenty(context),
              sizedwtwenty(context),
              Image.asset(
                'assets/nodejs.png',
                height: 35,
              ).moveUpOnHover,
              sizedwtwenty(context),
              sizedwtwenty(context),
              Image.asset(
                'assets/html.png',
                height: 38,
              ).moveUpOnHover,
              sizedwtwenty(context),
              sizedwtwenty(context),
              Image.asset(
                'assets/mongodb.png',
                height: 38,
              ).moveUpOnHover,
            ],
          ),
          sizedtwenty(context),
          sizedtwenty(context),
          sizedtwenty(context),
          Column(
            children: [
              GradientText('RECENT PROJECTS.',
                  colors: [
                    Color(0xffb16cea),
                    Color(0xffFF5E69),
                    Color(0xffFFA84B)
                  ],
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 8)),
              sizedtwenty(context),
              sizedtwenty(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {},
                      onHover: (hovering) {
                        setState(() => isHovering = hovering);
                      },
                      child: ProjectContainer(
                        assetimage: 'assets/wanderloom.png',
                        title: 'Wanderloom',
                        isHovering: isHovering,
                        gitTap: 'https://github.com/afradahsan/wanderloom',
                        onTap:
                            'https://www.amazon.com/dp/B0CP9ZQ2NF/ref=apps_sf_sta',
                      )),
                  InkWell(
                      onTap: () {},
                      onHover: (hovering) {
                        setState(() => isHovering2 = hovering);
                      },
                      child: ProjectContainer(
                        assetimage: 'assets/portfolio.png',
                        title: 'Portfolio',
                        isHovering: isHovering2,
                        gitTap: 'https://github.com/afradahsan/portfolio',
                        onTap: '',
                      )),
                  InkWell(
                      onTap: () {},
                      onHover: (hovering) {
                        setState(() => isHovering3 = hovering);
                      },
                      child: ProjectContainer(
                        assetimage: 'assets/parkwiser.png',
                        title: 'Parkwiser',
                        isHovering: isHovering3,
                        gitTap: 'https://github.com/afradahsan/PARK-R',
                        onTap:
                            'https://www.amazon.com/dp/B0CW18LMSM/ref=apps_sf_sta',
                      )),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
