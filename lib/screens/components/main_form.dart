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
          _MemberIdField(),
          _NameField(),
          SizedBox(height: 10),
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

  Row _NameField() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 100, height: 30, child: Text('반려동물 이름')),
        Container(
          width: 200,
          height: 30,
          child: TextField(
            decoration: _CustomInputDecoration(),
            onChanged: (value) => {petController.set_name(value)},
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          child: Text('확인'),
          onPressed: () {
            post_set_pet_data(data: {'member_id': 'jjhy95', 'name': '꾸꾸까까'});
          },
        )
      ],
    );
  }

  Row _MemberIdField() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 100, height: 30, child: Text('아이디')),
        Container(
          width: 200,
          height: 30,
          child: TextField(
            decoration: _CustomInputDecoration(),
            onChanged: (value) => {petController.set_member_id(value)},
          ),
        ),
      ],
    );
  }

  InputDecoration _CustomInputDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}
