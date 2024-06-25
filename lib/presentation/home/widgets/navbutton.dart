import 'package:flutter/material.dart';
import 'package:portfolio_web/core/extensions/hover_extensions.dart';
import 'package:portfolio_web/utils/themes.dart';

Widget navButton(String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
    onPressed: () {},
    child: Text(text, style: KTextTheme.darkTextTheme.bodyMedium),
  )).moveUpOnHover;
}
