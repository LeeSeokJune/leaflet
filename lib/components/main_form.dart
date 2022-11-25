import 'package:flutter/material.dart';
import 'package:leaflet/components/style.dart';

class MainForm extends StatelessWidget {
  MainForm({super.key, required this.left_widget, required this.right_widget});
  Widget left_widget, right_widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: main_width * magnification,
          height: main_height * magnification,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Row(
            children: [left_widget, right_widget],
          ),
        ),
      ),
    );
  }
}
