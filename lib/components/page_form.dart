import 'package:flutter/material.dart';
import 'package:leaflet/components/style.dart';

class PageForm extends StatelessWidget {
  PageForm({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9 * magnification),
      width: (main_width - 9 * magnification) * magnification / 2 - 2,
      height: main_height * magnification,
      decoration: test_line,
      child: child,
    );
  }
}
