import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:leaflet/controllers/pet_controller.dart';

import '../models/pet_model.dart';

var basic_url = 'http://52.79.233.120:8000/';
var dio = Dio();
var petController = Get.put(PetController());
Future post_set_pet_data({data}) async {
  final response = await dio.post(basic_url + 'single-pet/', data: data);
  petController.set_pet(Pet.fromJson(response.data));
}

Future post_set_pet_cycle({data}) async {
  final response = await dio.post(basic_url + 'cal-cycle/', data: data);
  petController.set_pet_cycle(Pet.fromJson(response.data));
}
