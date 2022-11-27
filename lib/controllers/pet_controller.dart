import 'dart:convert';

import 'package:get/get.dart';
import 'package:leaflet/models/pet_model.dart';

import '../components/modules.dart';

class PetController extends GetxController {
  var pet = Pet().obs;
  var instance;
  RxString member_id = ''.obs;
  RxString name = ''.obs;

  void set_pet(value) {
    pet.value = value;
  }

  void set_member_id(data) {
    member_id(data);
  }

  void set_name(data) {
    name(data);
  }

  String set_main_txt() {
    var txt = '';
    txt += '${pet.value.birthYear}년 ';
    txt += '${pet.value.birthMonth}월 ';
    txt += '${pet.value.birthDay}일생 / ';
    txt += '${pet.value.breed} / ';
    txt += pet.value.sex == '0' ? '수컷 / ' : '암컷 / ';
    txt += pet.value.neutering == '0' ? '중성화 O / ' : '중성화 X / ';
    txt += '${pet.value.weight}kg';
    return txt;
  }

  String set_alg_txt() {
    var alg, alg2;
    String txt = '';
    if (pet.value.alg != null) {
      alg = str_to_list(pet.value.alg);
      alg2 = str_to_list(pet.value.algSub);
      txt = list_to_str(alg + alg2);
    }
    return txt;
  }

  String set_health_txt() {
    var health;
    String txt = '';
    if (pet.value.health != null) {
      health = str_to_list(pet.value.health);
      txt = list_to_str(health);
    }
    return txt;
  }
}
