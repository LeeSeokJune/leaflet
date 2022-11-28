import 'package:flutter/material.dart';
import 'package:leaflet/components/style.dart';

class CustomContainerForm extends StatelessWidget {
  CustomContainerForm({super.key, required this.txt, required this.child});
  String txt;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: half_width * magnification,
          height: 9 * magnification,
          decoration: BoxDecoration(
            border: Border.all(color: border_color),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(basic_radius),
              topRight: Radius.circular(basic_radius),
            ),
            color: background_blue,
          ),
          child: Center(
              child: Text(
            '${txt}',
            style: blue_medium_style,
          )),
        ),
        Container(
          width: half_width * magnification,
          decoration: BoxDecoration(
            border: Border.all(color: border_color),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(basic_radius),
              bottomRight: Radius.circular(basic_radius),
            ),
          ),
          child: child,
        ),
      ],
    );
  }
}
