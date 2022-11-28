import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/pet_controller.dart';

import '../../components/rest_api.dart';

class PetDialog extends StatelessWidget {
  PetDialog({super.key});
  var petController = Get.put(PetController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200 * magnification,
        height: 100 * magnification,
        child: Column(children: [
          _MemberIdField(),
          _NameField(),
        ]),
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
            Get.back();
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
