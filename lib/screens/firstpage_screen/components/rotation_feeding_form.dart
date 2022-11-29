import 'package:flutter/material.dart';
import 'package:leaflet/screens/components/custom_container_form.dart';

import '../../../components/style.dart';

class RotationFeeding extends StatelessWidget {
  const RotationFeeding({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerForm(
      txt: '순환 급여',
      child: Column(
        children: [
          SizedBox(height: 2 * magnification),
          Text(
            textAlign: TextAlign.center,
            '일정 교체 주기에 따라 식단을 순환하여 급여하는 방식입니다. 다양한 단백질원으로 \n식단을 구성하여 균형잡힌 식단을 유지할 수 있습니다.',
            style: black_basic_style,
          ),
          SizedBox(height: 4 * magnification),
          Container(
            height: 53 * magnification,
            child: Stack(
              children: [
                Positioned(
                  left: (half_width - 19) * magnification / 2,
                  top: 0,
                  child: _circle_form(img: 'meat', txt: '육류', left_txt: false),
                ),
                Positioned(
                  left: (half_width - 20) * magnification / 2,
                  top: 20 * magnification,
                  child: Image.asset(
                    'assets/icons/rotation.png',
                    height: 22 * magnification,
                  ),
                ),
                Positioned(
                    left: 28 * magnification,
                    top: 30 * magnification,
                    child:
                        _circle_form(img: 'fish', txt: '어류', left_txt: true)),
                Positioned(
                    right: 23 * magnification,
                    top: 30 * magnification,
                    child: _circle_form(
                        img: 'poultry', txt: '가금류', left_txt: false)),
                Positioned(
                    right: 25 * magnification,
                    top: 11 * magnification,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('+ 기호성'),
                        Text('+ 다양한 영양소'),
                        Text('+ 소화 기능 강화'),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _circle_form({img, txt, left_txt}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (left_txt) Text('${txt}', style: blue_small_style),
        Container(
          width: 19 * magnification,
          height: 19 * magnification,
          decoration: BoxDecoration(
            border: Border.all(color: border_color),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: EdgeInsets.all(1 * magnification),
            child: Image.asset(
              'assets/icons/${img}.png',
              width: 15 * magnification,
            ),
          ),
        ),
        if (!left_txt) Text('${txt}', style: blue_small_style),
      ],
    );
  }
}
