import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/constants.dart';

class ProjectContainer extends StatefulWidget {
  const ProjectContainer(
      {super.key,
      required this.assetimage,
      required this.title,
      required this.isHovering, this.onGitTap});

  final String assetimage;
  final String title;
  final bool isHovering;
  final Function()? onGitTap;

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
        height: widget.isHovering ? 230 : 200,
        width: widget.isHovering ? 380 : 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              widget.assetimage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.ease,
                height: widget.isHovering ? 50 : 40,
                width: widget.isHovering ? 380 : 350,
                color: const Color.fromARGB(180, 0, 0, 0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                            decorationColor: white,
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: widget.onGitTap,
                            child: Image.asset('assets/github.png', height: 30,)),
                          sizedwfive(context),
                          Icon(
                            Icons.arrow_outward_rounded,
                            color: white,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}