import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/page_form.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/pet_controller.dart';
import 'package:leaflet/controllers/petfood_controller.dart';
import 'package:leaflet/screens/components/current_petfood.dart';
import 'package:leaflet/screens/components/healthcare_form.dart';
import 'package:leaflet/screens/components/pet_dialog.dart';

class LeftForm extends StatelessWidget {
  LeftForm({super.key});
  var petController = Get.put(PetController());
  var petfoodController = Get.put(PetfoodController());
  @override
  Widget build(BuildContext context) {
    return PageForm(
      child: Container(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Text(
                  '${petController.pet.value.name} 식단 가이드',
                  style: title_style,
                ),
                onTap: () {
                  Get.dialog(PetDialog());
                },
              ),
              SizedBox(height: 4 * magnification),
              _pet_info_txt(),
              SizedBox(height: 2 * magnification),
              _alg_info(),
              SizedBox(height: 2 * magnification),
              _health_info(),
              SizedBox(height: 4 * magnification),
              CurrentPetfood(),
              SizedBox(height: 4 * magnification),
              HealthcareForm(),
            ],
          ),
        ),
      ),
    );
  }

  Row _health_info() {
    return Row(
      children: [
        Container(
          width: 25 * magnification,
          child: Text(
            '건강고려사항',
            style: blue_small_style,
          ),
        ),
        Text(
          '${petController.set_health_txt()}',
          style: black_bold_basic_style,
        ),
      ],
    );
  }

  Row _alg_info() {
    return Row(
      children: [
        Container(
          width: 25 * magnification,
          child: Text(
            '알레르기',
            style: blue_small_style,
          ),
        ),
        Text(
          '${petController.set_alg_txt()}',
          style: black_bold_basic_style,
        ),
      ],
    );
  }

  Container _pet_info_txt() {
    return Container(
      width: half_width * magnification,
      height: 9 * magnification,
      color: background_yellow,
      child: Center(
          child: Text(
        '${petController.set_main_txt()}',
        style: grey_regular_style,
      )),
    );
  }
}
