import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/page_form.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/pet_controller.dart';

class LeftForm extends StatelessWidget {
  LeftForm({super.key});
  var petController = Get.put(PetController());
  @override
  Widget build(BuildContext context) {
    return PageForm(
      child: Container(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${petController.pet.value.name} 식단 가이드',
                style: title_style,
              ),
              SizedBox(height: 5 * magnification),
              _pet_info_txt(),
              SizedBox(height: 3 * magnification),
              _alg_info(),
              SizedBox(height: 3 * magnification),
              _health_info(),
              SizedBox(height: 5 * magnification),
              Column(
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
                      '현재 급여 중인 사료',
                      style: blue_medium_style,
                    )),
                  ),
                  Container(
                    width: half_width * magnification,
                    height: 80 * magnification,
                    decoration: BoxDecoration(
                      border: Border.all(color: border_color),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5 * magnification),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10 * magnification),
                            Container(
                              width: 40 * magnification,
                              height: 40 * magnification,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(basic_radius),
                                color: background_blue,
                              ),
                            ),
                            SizedBox(width: 9 * magnification),
                            Column(
                              children: [
                                Container(
                                  width: 70 * magnification,
                                  height: 8 * magnification,
                                  color: light_grey,
                                  child: Center(
                                    child: Text('사료 이름'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
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
        Text('${petController.set_health_txt()}'),
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
        Text('${petController.set_alg_txt()}'),
      ],
    );
  }

  Container _pet_info_txt() {
    return Container(
      width: half_width * magnification,
      height: 9 * magnification,
      color: yellow,
      child: Center(
          child: Text(
        '${petController.set_main_txt()}',
        style: grey_regular_style,
      )),
    );
  }
}
