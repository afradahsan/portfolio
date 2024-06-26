import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/presentation/experience/widgets/experience_container.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  static const String route = '/experience';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GradientText(
            'WORK EXPERIENCE.',
            colors: [const Color(0xff5BADFF), const Color(0xff1373D1)],
            gradientDirection: GradientDirection.ttb,
            style: TextStyle(
              fontSize: 28,
              fontFamily: GoogleFonts.poppins().fontFamily,
              fontWeight: FontWeight.w600,
              letterSpacing: 8,
            ),
          ),
          sizedtwenty(context),
          sizedten(context),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExperienceContainer(
                  jobTitle: 'Flutter Developer Intern',
                  timeline: 'Jul 2023 - Present',
                  companyName: 'Brototype',
                  jobDesc:
                      'Designed and developed cutting-edge mobile applications using Flutter with a strong emphasis on user-centric design and performance optimization. Throughout this journey, I collaborated with diverse teams to translate theoretical knowledge into practical solutions that align with project objectives and timelines. This immersive experience not only deepened my expertise in mobile app development but also enhanced my ability to apply technical skills effectively in real-world scenarios.'),
              ExperienceContainer(
                  jobTitle: 'Content Creator',
                  timeline: 'April 2020 - May 2022',
                  companyName: 'Instagram',
                  jobDesc:
                      'Created engaging tech-related content on Instagram, collaborating with potential companies worldwide. This role allowed me to enhance my skills in graphic design, video editing, and SEO optimization, SMM and more. Through proactive collaboration with global tech firms, I\'ve not only strengthened my content creation abilities but also gained valuable insights into emerging industry trends.'),
              ExperienceContainer(jobTitle: 'Feild Marketing Executive', timeline: 'April 2023 - June 2023', companyName: 'ZuperAp', jobDesc: 'During my time at ZuperAp, a Flutter-based app offering a comprehensive solution for purchasing groceries, accessing services, and more under one platform, I served as a Field Marketing Executive. In this role, I played a pivotal part in promoting the app\'s unique value proposition to target audiences. This experience sharpened my skills in marketing strategy implementation, customer outreach, and promoting tech-driven solutions in dynamic market environments')
            ],
          ),
        ],
      ),
    );
  }
}
