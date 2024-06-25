import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: white)
        )
      ),
      onPressed: () {}, 
      child: GradientText(
                'Let\'s Chat',
                colors: const <Color>[
                  Color(0xffb16cea),
                  Color(0xffFF5E69),
                  Color(0xffFFA84B)
                ],
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.w400),
              ),
      );
  }
}
