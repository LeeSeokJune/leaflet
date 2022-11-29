import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/modules.dart';
import 'package:leaflet/controllers/pet_controller.dart';
import 'package:leaflet/controllers/petfood_controller.dart';
import 'package:leaflet/screens/components/custom_container_form.dart';
import 'package:leaflet/screens/components/select_petfood_dialog.dart';

import '../../components/style.dart';
import '../../data/petfood.dart';

class CurrentPetfood extends StatelessWidget {
  CurrentPetfood({super.key});
  var petfoodController = Get.put(PetfoodController());
  var petController = Get.put(PetController());
  @override
  Widget build(BuildContext context) {
    return CustomContainerForm(
      txt: '현재 급여 중인 사료',
      child: _current_petfood(),
    );
  }

  Widget _current_petfood() {
    return Obx(
      () => Column(
        children: [
          SizedBox(height: 3 * magnification),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10 * magnification),
              _petfood_info(),
              SizedBox(width: 9 * magnification),
              _petfood_features(),
            ],
          ),
          SizedBox(height: 3 * magnification),
          _show_pet_foot(),
          SizedBox(height: 2 * magnification),
          _cycle_graph(),
          SizedBox(height: 2 * magnification),
          _cycle_number(),
          SizedBox(
            height: 1 * magnification,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 65 * magnification, bottom: 3 * magnification),
            child: RichText(
              text: TextSpan(
                text: '권장 사료 교체 주기',
                style: TextStyle(
                    fontSize: 9 + magnification,
                    fontWeight: FontWeight.w500,
                    color: point_yellow),
                children: [
                  TextSpan(
                    text: '  (개월)',
                    style: TextStyle(
                        fontSize: 7 + magnification,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _petfood_info() {
    return Column(
      children: [
        InkWell(
          child: Container(
              width: 40 * magnification,
              height: 40 * magnification,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(basic_radius),
                color: background_blue,
              ),
              child: Image.asset(
                'images/6fish.png',
              )
              // 'assets/images/${petfoodController.petfood.value.brand}/${petfoodController.petfood.value.name}.png'),
              ),
          onTap: () {
            Get.dialog(SelectPetfoodDialog(order_index: 0));
          },
        ),
        SizedBox(height: 4 * magnification),
        Container(
          decoration: test_line,
          width: 28 * magnification,
          height: 15 * magnification,
          child: Center(child: Text('해시태그')),
        ),
      ],
    );
  }

  Column _petfood_features() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 70 * magnification,
          height: 8 * magnification,
          color: light_grey,
          child: Center(
            child: Text(
              '${petfood_list[petfoodController.petfood_index_list[0]]["name"]}',
              style: black_bold_style,
            ),
          ),
        ),
        SizedBox(height: 4 * magnification),
        Container(
          decoration: BoxDecoration(
              border: Border(left: BorderSide(color: border_color, width: 2))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _second_feature(
                  main_txt: '권장 연령',
                  sub_txt:
                      '${petfood_list[petfoodController.petfood_index_list[0]]["life_stage"]}'),
              SizedBox(height: 2 * magnification),
              _second_feature(
                  main_txt: '주 단백질',
                  sub_txt:
                      '${petfood_list[petfoodController.petfood_index_list[0]]["main_ingredient"]}'),
            ],
          ),
        ),
        SizedBox(height: 6 * magnification),
        for (var index = 0; index < 3; index++)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.5 * magnification),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/check_box.png',
                  width: 4.5 * magnification,
                  height: 4.5 * magnification,
                ),
                SizedBox(width: 4 * magnification),
                Text(
                  '${petfood_list[petfoodController.petfood_index_list[0]]["feature"]}',
                  style: black_basic_style,
                ),
              ],
            ),
          ),
        // _cycle_container(),
      ],
    );
  }

  Row _second_feature({main_txt, sub_txt}) {
    return Row(
      children: [
        Container(
          width: 20 * magnification,
          child: Center(
              child: Text(
            '${main_txt}',
            style: TextStyle(
                fontSize: 10 + magnification,
                color: grey,
                fontWeight: FontWeight.w600),
          )),
        ),
        Text(
          list_to_str(sub_txt),
          style: TextStyle(
            fontSize: 10 + magnification,
            color: grey,
          ),
        ),
      ],
    );
  }

  Row _show_pet_foot() {
    return Row(
      children: [
        SizedBox(width: 7 * magnification),
        for (var index = 0; index < 6; index++) _pet_foot_img(index: index),
      ],
    );
  }

  Widget _pet_foot_img({index}) {
    return Padding(
      padding: index != 5
          ? EdgeInsets.only(right: 18 * magnification)
          : EdgeInsets.only(right: 5 * magnification),
      child: index == petfoodController.cycle_index.value
          ? Image.asset(
              'assets/icons/pet_foot.png',
              width: 4 * magnification,
              height: 4 * magnification,
              color: index < 3 ? main_color : point_yellow,
            )
          : SizedBox(width: 4 * magnification),
    );
  }

  Row _cycle_graph() {
    return Row(
      children: [
        SizedBox(width: 8 * magnification),
        for (var index = 0; index < 6; index++) _single_graph(index: index),
      ],
    );
  }

  Row _single_graph({index}) {
    return Row(
      children: [
        InkWell(
            child: Container(
              width: 2 * magnification,
              height: 2 * magnification,
              decoration: BoxDecoration(
                color: index < 3 ? main_color : point_yellow,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onTap: () {
              petfoodController.set_cycle_index(index);
            }),
        if (index != 5)
          Container(
            width: 20 * magnification,
            height: 2,
            color: index < 3 ? main_color : point_yellow,
          )
      ],
    );
  }

  Row _cycle_number() {
    return Row(
      children: [
        SizedBox(width: 8 * magnification),
        for (var index = 0; index < 6; index++)
          Container(
            width: index < 5 ? 22 * magnification : 5 * magnification,
            child: Text('${index + 1}',
                style:
                    index < 3 ? number_bold_medium : number_bold_medium_yellow),
          ),
      ],
    );
  }

  Padding _cycle_container() {
    return Padding(
      padding: const EdgeInsets.only(
          top: 5 * magnification, left: 20 * magnification),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 30 * magnification,
            height: 7 * magnification,
            decoration: BoxDecoration(
              color: light_grey,
              border: Border.all(color: grey),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(basic_radius),
                topRight: Radius.circular(basic_radius),
              ),
            ),
            child: Center(
                child: Text(
              '일일 권장 급여량',
            )),
          ),
          Transform.translate(
            offset: Offset(0, -1),
            child: Container(
              width: 30 * magnification,
              height: 8 * magnification,
              decoration: BoxDecoration(
                border: Border.all(color: grey),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(basic_radius),
                  bottomRight: Radius.circular(basic_radius),
                ),
              ),
              child: Center(child: Text('45g')),
            ),
          ),
        ],
      ),
    );
  }
}
