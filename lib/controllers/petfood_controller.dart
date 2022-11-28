import 'package:get/get.dart';
import 'package:leaflet/data/petfood.dart';
import 'package:leaflet/models/petfood_model.dart';

class PetfoodController extends GetxController {
  var petfood = Petfood().obs;
  var cycle_index = 0.obs;

  @override
  void onInit() {
    super.onInit();
    set_petfood(Petfood.fromJson(petfood_list[0]));
  }

  void set_petfood(data) {
    petfood.value = data;
  }

  void set_cycle_index(data) {
    cycle_index(data);
  }
}
