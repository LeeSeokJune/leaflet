import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:leaflet/components/page_form.dart';
import 'package:leaflet/components/rest_api.dart';
import 'package:leaflet/components/style.dart';

class LeftForm extends StatelessWidget {
  const LeftForm({super.key});

  @override
  Widget build(BuildContext context) {
    return PageForm(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Text(
                '루이 식단 가이드',
                style: title_style,
              ),
              onTap: () {
                postData(data: {'member_id': 'jjhy95', 'name': '꾸꾸까까'});
              },
            ),
            Container(
              child: Text(''),
            )
          ],
        ),
      ),
    );
  }
}
