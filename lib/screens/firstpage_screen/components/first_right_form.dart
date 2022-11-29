import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/page_form.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/container_controller.dart';
import 'package:leaflet/screens/firstpage_screen/components/rotation_feeding_form.dart';
import 'package:leaflet/screens/firstpage_screen/components/sample_petfood_test_form.dart';
import 'package:leaflet/screens/firstpage_screen/components/subscription_petfood_form.dart';

class FirstRight_form extends StatelessWidget {
  FirstRight_form({super.key});
  var pageList = [SamplePetfoodTestForm(), RotationFeeding()];
  var containerController = Get.put(ContainerController());
  @override
  Widget build(BuildContext context) {
    return PageForm(
      child: Obx(
        () => Column(
          children: [
            pageList[containerController.container_index.value],
            SizedBox(height: 5 * magnification),
            SubscriptionPetfoodForm(),
          ],
        ),
      ),
    );
  }
}
