import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/link.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  static const String route = '/contact';

  @override
  Widget build(BuildContext context) {

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'afradahsan02@gmail.com',
    );

    return Container(
      height: 400,
      width: screenWidth(context),
      decoration: BoxDecoration(
        color: Colors.grey[900],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ready to turn ideas into reality?',
              style: TextStyle(
                fontSize: 30,
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: white,
                fontWeight: FontWeight.w600,
              ),
            ),
            GradientText(
              'Start by saying a \'Hi!\'',
              colors: [const Color(0xffFF8660), const Color(0xffD5491D)],
              style: TextStyle(
                fontSize: 50,
                fontFamily: GoogleFonts.poppins().fontFamily,
                color: white,
                fontWeight: FontWeight.w600,
              ),
            ),
            sizedtwenty(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Link(
                    uri: emailLaunchUri,
                    target: LinkTarget.blank,
                    builder: (context, followLink) => InkWell(
                        onTap: followLink,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Email-Icon.png',
                              height: 25,
                            ),
                            sizedwten(context),
                            Text(
                              'afradahsan02@gmail.com',
                              style: TextStyle(color: white.withOpacity(0.6)),
                            )
                          ],
                        ))),
                sizedwten(context),
              ],
            ),
            sizedtwenty(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Link(
                    uri: Uri.parse('https://www.linkedin.com/in/afrad02'),
                    target: LinkTarget.blank,
                    builder: (context, followLink) => InkWell(
                        onTap: followLink,
                        child: Image.asset(
                          'assets/linkedin.png',
                          height: 20,
                        ))),
                sizedwtwenty(context),
                sizedwtwenty(context),
                Link(
                    uri: Uri.parse('https://x.com/afradahsan_'),
                    target: LinkTarget.blank,
                    builder: (context, followLink) => InkWell(
                        onTap: followLink,
                        child: Image.asset(
                          'assets/twitter.png',
                          height: 20,
                        ))),
                sizedwtwenty(context),
                sizedwtwenty(context),
                Link(
                    uri: Uri.parse('https://www.instagram.com/techxplained_'),
                    target: LinkTarget.blank,
                    builder: (context, followLink) => InkWell(
                        onTap: followLink,
                        child: Image.asset(
                          'assets/instagram.png',
                          height: 20,
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
