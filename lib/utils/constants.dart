import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_web/presentation/home/homepage.dart';
import 'package:portfolio_web/presentation/project/projects.dart';

SizedBox sizedten(BuildContext context) {
  return SizedBox(
    height: (MediaQuery.of(context).size.height) / 80,
  );
}

SizedBox sizedfive(BuildContext context) {
  return SizedBox(
    height: (MediaQuery.of(context).size.height) / 160,
  );
}

SizedBox sizedtwenty(BuildContext context) {
  return SizedBox(
    height: (MediaQuery.of(context).size.height) / 40,
  );
}

SizedBox sizedwten(BuildContext context) {
  return SizedBox(
    width: (MediaQuery.of(context).size.height) / 80,
  );
}

SizedBox sizedwtwenty(BuildContext context) {
  return SizedBox(
    width: (MediaQuery.of(context).size.height) / 40,
  );
}

SizedBox sizedwfive(BuildContext context) {
  return SizedBox(
    width: (MediaQuery.of(context).size.height) / 160,
  );
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

