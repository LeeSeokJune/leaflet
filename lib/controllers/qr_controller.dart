import 'package:get/get.dart';
import 'package:leaflet/data/health.dart';

class QrController extends GetxController {
  var qr_index = [0, 1].obs;

  void set_qr_index(index) {
    if (qr_index[index] < healthcare.length - 1) {
      qr_index[index]++;
    } else {
      qr_index[index] = 0;
    }
  }
}
