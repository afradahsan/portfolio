import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/constants.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({super.key, required this.jobTitle, required this.timeline, required this.companyName, required this.jobDesc});

  final String jobTitle;
  final String timeline;
  final String companyName;
  final String jobDesc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: screenWidth(context) - 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                jobTitle,
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                timeline,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  color: white.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(companyName,
              style: TextStyle(
                fontSize: 16,
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: white.withOpacity(0.5),
                fontWeight: FontWeight.w400,
              )),
          sizedfive(context),
          Text(
            jobDesc,
            style: TextStyle(
              fontSize: 16,
              fontFamily: GoogleFonts.poppins().fontFamily,
              color: white.withOpacity(0.3),
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
