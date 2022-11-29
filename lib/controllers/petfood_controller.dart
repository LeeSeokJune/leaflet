import 'package:get/get.dart';

class PetfoodController extends GetxController {
  RxList petfood_index_list = [0, 1, 2, 3].obs;
  RxInt cycle_index = 0.obs;

  void set_petfood_index_list({order_index, petfood_index}) {
    petfood_index_list[order_index] = petfood_index;
  }

  void set_cycle_index(index) {
    cycle_index.value = index;
  }
}
