import 'package:get/get.dart';

import '../controllers/appoint_controller.dart';

class AppointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppointController>(
      () => AppointController(),
    );
  }
}
