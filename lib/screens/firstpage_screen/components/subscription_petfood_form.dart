import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/pet_controller.dart';
import 'package:leaflet/screens/components/custom_container_form.dart';

class SubscriptionPetfoodForm extends StatelessWidget {
  SubscriptionPetfoodForm({super.key});
  var petController = Get.put(PetController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomContainerForm(
          txt: '정기구독 사료 교체 방법',
          child: Column(
            children: [
              Obx(
                () => _explain_subscription(
                    index: 1,
                    main_txt: '샘플 사료 테스트',
                    explain:
                        '권장 교체 시기(4-6개월차) 부터는 루이스홈이 ${petController.pet.value.name}가 먹을 수 있는 샘플 사료를 보내드립니다. 샘플 사료 급여 후 교체 여부를 결정합니다.'),
              ),
              _explain_subscription(
                  index: 2,
                  main_txt: '사료 변경하기',
                  explain:
                      '루이스홈 사이트를 통해 교체하고자 하는 사료를 정기배송 결제하면 해당 결제 시점 이후부터는 교체된 사료가 정기적으로 배송됩니다.'),
              _explain_subscription(
                  index: 3,
                  main_txt: '변경된 사료 평가하기',
                  explain:
                      '바꾼 사료를 급여한 이후 카카오톡을 통해 루이스홈 설문 리스트를 보내드립니다. 간단한 질문에 응답해주시면 다음 교체 시기에 더욱 맞춤화된 추천을 받을 수 있습니다.'),
            ],
          ),
        ),
        SizedBox(height: 3 * magnification),
        Column(
          children: [
            Row(
              children: [
                Text('사료 교체 주의 사항', style: blue_small_style),
                SizedBox(width: 3 * magnification - 2),
                Container(
                    width: 100 * magnification, height: 1, color: border_color),
              ],
            ),
            SizedBox(height: 5 * magnification),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (var index = 0; index < 4; index++)
                  _petfood_change_form(index: index)
              ],
            ),
            SizedBox(height: 2 * magnification),
            Text(
              '사료 교체 시 약 7-10일 정도 혼합 급여 기간이 필요합니다.',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }

  Row _petfood_change_form({index}) {
    var change_days = ['1-3일', '4-6일', '6-10일', '10일 이후'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
            offset: Offset(10, -10),
            child: Text(
              '${(index + 1) * 25}%',
              style: TextStyle(
                  fontSize: 8 + magnification,
                  color: main_color,
                  fontWeight: FontWeight.bold),
            )),
        Column(
          children: [
            Image.asset(
              'assets/icons/petfood_${index}.png',
              width: 13 * magnification,
            ),
            SizedBox(height: 2 * magnification),
            Text(
              change_days[index],
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }

  Column _explain_subscription({index, main_txt, explain}) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0 * magnification),
              child: Text('${index}', style: number_bold_large_style),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${main_txt}", style: blue_small_style),
                SizedBox(height: magnification),
                Container(
                  width: 100 * magnification,
                  child: Text(
                    '${explain}',
                    style: TextStyle(
                        fontSize: 9 + magnification,
                        fontWeight: FontWeight.w600),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
        if (index < 3)
          Container(width: 120 * magnification, height: 1, color: border_color),
      ],
    );
  }
}
