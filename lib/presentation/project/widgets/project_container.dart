import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/colors.dart';
import 'package:portfolio_web/utils/constants.dart';
import 'package:url_launcher/link.dart';

class ProjectContainer extends StatefulWidget {
  const ProjectContainer(
      {super.key,
      required this.assetimage,
      required this.title,
      required this.isHovering,
      required this.gitTap, required this.onTap});

  final String assetimage;
  final String title;
  final bool isHovering;
  final String gitTap;
  final String onTap;

  @override
  State<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends State<ProjectContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
        height: widget.isHovering ? 270 : 240,
        width: widget.isHovering ? 420 : 390,
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
                height: widget.isHovering ? 70 : 60,
                width: widget.isHovering ? 420 : 390,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(180, 0, 0, 0),
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                )),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Link(
                        uri: Uri.parse(
                            widget.onTap),
                        target: LinkTarget.blank,
                        builder: (context, followLink) => InkWell(
                          onTap: followLink,
                          child: Text(
                            widget.title,
                            style: TextStyle(
                                decorationColor: white,
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Link(
                              uri: Uri.parse(widget.gitTap),
                              target: LinkTarget.blank,
                              builder: (context, followLink) => InkWell(
                                  onTap: followLink,
                                  child: Image.asset(
                                    'assets/github.png',
                                    height: 30,
                                  ))),
                          sizedwfive(context),
                          Link(
                              uri: Uri.parse(
                                  widget.onTap),
                              target: LinkTarget.blank,
                              builder: (context, followLink) => InkWell(
                                onTap: followLink,
                                child: Icon(
                                      Icons.arrow_outward_rounded,
                                      color: white,
                                      size: 30,
                                    ),
                              )),
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
