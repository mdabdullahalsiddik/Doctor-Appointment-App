import 'package:get/get.dart';

class AppointController extends GetxController {
  RxString selectGender = "".obs;
  RxString selectBlood = "".obs;
  back() {
    Get.back();
  }

  gender(String value) {
    selectGender.value = value;
  }
  
  blood(String value) {
    selectBlood.value = value;
  }
}
