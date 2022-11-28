import 'package:get/get.dart';

class PetfoodController extends GetxController {
  var petfood_index = [0, 1, 2, 3].obs;
  var cycle_index = [0, 1].obs;

  void set_petfood_index({order_index, petfood_index}) {
    petfood_index[order_index] = petfood_index;
  }

  void set_cycle_index(index) {
    if (cycle_index[index] < 5) {
      cycle_index[index]++;
    } else {
      cycle_index[index] = 0;
    }
  }
}
