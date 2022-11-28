import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/rest_api.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/pet_controller.dart';

class MainForm extends StatelessWidget {
  MainForm({super.key, required this.left_widget, required this.right_widget});
  Widget left_widget, right_widget;
  var petController = Get.put(PetController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: 10),
          Container(
            width: main_width * magnification,
            height: main_height * magnification,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
              children: [left_widget, right_widget],
            ),
          ),
        ],
      ),
    );
  }
}
