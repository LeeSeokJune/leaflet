import 'package:flutter/material.dart';

const double magnification = 4;
const main_width = 297;
const main_height = 210;
const half_width = 130;
final double basic_radius = 10;
final test_line = BoxDecoration(border: Border.all(color: main_color));

final main_color = Color.fromRGBO(13, 64, 151, 1);
final background_blue = Color.fromRGBO(180, 197, 227, 0.31);
final background_yellow = Color.fromRGBO(248, 238, 227, 1);
final point_yellow = Color.fromRGBO(243, 152, 0, 1);
final grey = Color.fromRGBO(89, 87, 87, 1);
final light_grey = Color.fromRGBO(220, 221, 221, 0.31);
final border_color = Color.fromRGBO(183, 201, 232, 1);
final title_style = TextStyle(
    fontSize: 19 + magnification,
    color: main_color,
    fontWeight: FontWeight.w700);
final blue_small_style = TextStyle(
    fontSize: 10 + magnification,
    color: main_color,
    fontWeight: FontWeight.w800);
final blue_medium_style = TextStyle(
  fontSize: 12 + magnification,
  fontWeight: FontWeight.w600,
  color: main_color,
);
final black_bold_style = TextStyle(
    fontSize: 10 + magnification,
    color: Colors.black,
    fontWeight: FontWeight.w700);
final black_bold_basic_style =
    TextStyle(color: Colors.black, fontWeight: FontWeight.w700);
final black_basic_style = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 10 + magnification);
final number_bold_medium = TextStyle(
    fontSize: 10 + magnification,
    fontFamily: 'Jalnan',
    color: main_color,
    fontWeight: FontWeight.w500);
final number_bold_medium_yellow = TextStyle(
    fontSize: 10 + magnification,
    fontFamily: 'Jalnan',
    color: point_yellow,
    fontWeight: FontWeight.w500);
final number_bold_large_style = TextStyle(
    fontSize: 17 + magnification,
    fontFamily: 'Jalnan',
    color: main_color,
    fontWeight: FontWeight.w500);
final grey_regular_style = TextStyle(
    fontSize: 11 + magnification, color: grey, fontWeight: FontWeight.w500);
final grey_small_style = TextStyle(
  fontSize: 10 + magnification,
  color: grey,
  fontWeight: FontWeight.w600,
);
