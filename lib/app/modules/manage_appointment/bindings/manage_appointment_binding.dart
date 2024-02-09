import 'package:get/get.dart';

import '../controllers/manage_appointment_controller.dart';

class ManageAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManageAppointmentController>(
      () => ManageAppointmentController(),
    );
  }
}
