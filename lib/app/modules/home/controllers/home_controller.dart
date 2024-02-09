import 'package:easy_health/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  appoint() {
    Get.toNamed(Routes.APPOINT);
  }

  profile() {
    Get.offAllNamed(Routes.PROFILE);
  }
}
