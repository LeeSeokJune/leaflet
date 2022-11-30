import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leaflet/components/style.dart';
import 'package:leaflet/controllers/petfood_controller.dart';
import 'package:leaflet/data/petfood.dart';

class SelectPetfoodDialog extends StatelessWidget {
  SelectPetfoodDialog({super.key, required this.order_index});
  int order_index;
  var petfoodController = Get.put(PetfoodController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: petfood_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: ((context, i) {
          return InkWell(
            child: Column(
              children: [
                Container(
                  width: 30 * magnification,
                  height: 30 * magnification,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(basic_radius),
                    color: background_blue,
                  ),
                  child: Image.asset(
                      'assets/images/${petfood_list[i]["product_code"]}.png'),
                ),
                Text("${petfood_list[i]['name']}"),
              ],
            ),
            onTap: (() {
              // print('${order_index} ${i}');
              petfoodController.set_petfood_index_list(
                  order_index: order_index, petfood_index: i);
              Get.back();
            }),
          );
        }),
      ),
    );
  }
}
