import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/page_form.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/pet_controller.dart';
import 'package:leaflet/controllers/petfood_controller.dart';
import 'package:leaflet/screens/firstpage_screen/components/sample_petfood_test_form.dart';
import 'package:leaflet/screens/firstpage_screen/components/subscription_petfood_form.dart';

class FirstRight_form extends StatelessWidget {
  FirstRight_form({super.key});
  var petController = Get.put(PetController());
  var petfoodController = Get.put(PetfoodController());
  @override
  Widget build(BuildContext context) {
    return PageForm(
      child: Column(
        children: [
          SamplePetfoodTestForm(),
          SizedBox(height: 5 * magnification),
          SubscriptionPetfoodForm(),
        ],
      ),
    );
  }
}
