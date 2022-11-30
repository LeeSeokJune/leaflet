import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/controllers/pet_controller.dart';
import 'package:leaflet/controllers/petfood_controller.dart';

import '../../../components/style.dart';
import '../../../data/petfood.dart';
import '../../components/custom_container_form.dart';
import '../../components/select_petfood_dialog.dart';

class SamplePetfoodTestForm extends StatelessWidget {
  SamplePetfoodTestForm({super.key});
  var petController = Get.put(PetController());
  var petfoodController = Get.put(PetfoodController());
  @override
  Widget build(BuildContext context) {
    return CustomContainerForm(
      txt: '샘플 사료 테스트',
      child: Obx(
        () => Column(
          children: [
            SizedBox(height: 2 * magnification),
            Text(
              textAlign: TextAlign.center,
              '${petController.pet.value.name}의 건강사항 등을 고려한 사료 추천 리스트입니다. 함께 동봉된\n샘플을 급여하신 후 교체 여부를 결정해주세요.',
              style: black_basic_style,
            ),
            SizedBox(height: 3 * magnification),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var index = 1; index < 4; index++)
                  _sample_petfood_form(index: index),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column _sample_petfood_form({index}) {
    return Column(
      children: [
        InkWell(
          child: Container(
            width: 32 * magnification,
            height: 32 * magnification,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(basic_radius),
              color: background_blue,
            ),
            child: Image.asset(
                'assets/images/${petfood_list[petfoodController.petfood_index_list[index]]["product_code"]}.png'),
          ),
          onTap: () {
            Get.dialog(SelectPetfoodDialog(order_index: index));
          },
        ),
        SizedBox(height: 2 * magnification),
        Container(
          alignment: Alignment.topCenter,
          width: 32 * magnification,
          height: 8 * magnification,
          child: Text(
            textAlign: TextAlign.center,
            '${petfood_list[petfoodController.petfood_index_list[index]]['name']}',
            style: black_bold_style,
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          width: 32 * magnification,
          height: 12 * magnification,
          child: Column(
            children: [
              for (var index = 0;
                  index <
                      (petfood_list[petfoodController.petfood_index_list[0]]
                              ["hash"] as List)
                          .length;
                  index++)
                Text(
                  '#${(petfood_list[petfoodController.petfood_index_list[0]]["hash"] as List)[index]}',
                  style: grey_small_style,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
