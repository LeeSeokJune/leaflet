import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

const double magnification = 4;
const main_width = 297;
const main_height = 210;
const half_width = 130;
final double basic_radius = 10;
final test_line = BoxDecoration(border: Border.all(color: main_color));

final main_color = CmykColor(97.7, 83.18, 11.06, 0);
final background_blue = CmykColor(33.13, 17.75, 2.39, 0);
final yellow = CmykColor(4.02, 7.54, 11.69, 0);
final grey = CmykColor(0, 0, 0, 80);
final light_grey = CmykColor(0, 0, 0, 20);
final border_color = CmykColor(31.81, 16.24, 0, 0);
final title_style = TextStyle(
    fontSize: 19 + magnification,
    color: main_color,
    fontWeight: FontWeight.w600);
final blue_small_style = TextStyle(
    fontSize: 10 + magnification,
    color: main_color,
    fontWeight: FontWeight.w600);
final blue_medium_style = TextStyle(
  fontSize: 12 + magnification,
  fontWeight: FontWeight.w500,
  color: main_color,
);
final grey_regular_style = TextStyle(fontSize: 11 + magnification, color: grey);
