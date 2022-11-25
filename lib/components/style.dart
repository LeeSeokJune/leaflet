import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

const double magnification = 4;
const main_width = 297;
const main_height = 210;
final test_line = BoxDecoration(border: Border.all(color: main_color));

final main_color = CmykColor(97.7, 83.18, 11.06, 0);
final background_blue = CmykColor(33.13, 17.79, 2.39, 0);

final title_style =
    TextStyle(fontSize: 19, color: main_color, fontWeight: FontWeight.w600);
