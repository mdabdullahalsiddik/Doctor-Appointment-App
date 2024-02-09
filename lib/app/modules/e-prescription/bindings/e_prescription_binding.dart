import 'package:get/get.dart';

import '../controllers/e_prescription_controller.dart';

class EPrescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EPrescriptionController>(
      () => EPrescriptionController(),
    );
  }
}
