import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/qr_controller.dart';
import 'package:leaflet/data/health.dart';
import 'package:leaflet/screens/components/custom_container_form.dart';

class HealthcareForm extends StatelessWidget {
  HealthcareForm({super.key});

  var qrController = Get.put(QrController());

  @override
  Widget build(BuildContext context) {
    return CustomContainerForm(
      txt: '건강고려사항 추천 간식/영양제',
      child: Column(
        children: [
          SizedBox(height: 5 * magnification),
          Text(
            "반려동물 관절 관리는 '적정 체중' '관절 염증 완화' 두 가지 측면에서 시행해줄 수 있어요.\n적절한 체중 유지와 염증 완화에 도움되는 제품들을 만나보세요",
            style: black_basic_style,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5 * magnification),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _qr_form(index: 0),
                _qr_form(index: 1),
              ],
            ),
          ),
          SizedBox(height: 6 * magnification)
        ],
      ),
    );
  }

  Widget _qr_form({index}) {
    return InkWell(
      child: Column(
        children: [
          Image.asset(
            'assets/qr/' + healthcare[qrController.qr_index[index]] + '.png',
            width: 20 * magnification,
            height: 20 * magnification,
          ),
          SizedBox(height: 1 * magnification),
          Text(
            healthcare_kor[qrController.qr_index[index]],
            style: blue_small_style,
          ),
        ],
      ),
      onTap: () {
        qrController.set_qr_index(index);
      },
    );
  }
}
