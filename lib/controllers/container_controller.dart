import 'package:get/get.dart';

class ContainerController extends GetxController {
  RxInt container_index = 1.obs;

  void set_container_index() {
    container_index.value = container_index.value == 0 ? 1 : 0;
  }
}
