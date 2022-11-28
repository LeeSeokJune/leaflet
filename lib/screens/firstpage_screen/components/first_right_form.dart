import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/page_form.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/pet_controller.dart';
import 'package:leaflet/controllers/petfood_controller.dart';
import 'package:leaflet/data/petfood.dart';
import 'package:leaflet/screens/components/custom_container_form.dart';

class FirstRight_form extends StatelessWidget {
  FirstRight_form({super.key});
  var petController = Get.put(PetController());
  var petfoodController = Get.put(PetfoodController());
  @override
  Widget build(BuildContext context) {
    return PageForm(
      child: Column(
        children: [
          CustomContainerForm(
            txt: '샘플 사료 테스트',
            child: Obx(
              () => Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    '${petController.pet.value.name}의 건강사항 등을 고려한 사료 추천 리스트입니다. 함께 동봉된\n샘플을 급여하신 후 교체 여부를 결정해주세요.',
                    style: black_basic_style,
                  ),
                  SizedBox(height: 3 * magnification),
                  _sample_petfood_form(index: 0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _sample_petfood_form({index}) {
    return Column(
      children: [
        Container(
          width: 32 * magnification,
          height: 32 * magnification,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(basic_radius),
            color: background_blue,
          ),
          child: Image.asset('assets/images/6fish.png'),
        ),
        SizedBox(height: 2 * magnification),
        Container(
          alignment: Alignment.topCenter,
          width: 32 * magnification,
          height: 10 * magnification,
          child: Text(
            '${petfood_list[petfoodController.petfood_index[index]]['name']}',
            style: black_bold_style,
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          width: 32 * magnification,
          height: 10 * magnification,
          child: Text(
            '해시태그',
            style: grey_regular_style,
          ),
        ),
      ],
    );
  }
}
