import 'package:easy_health/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 5))
        .then((value) => Get.offNamed(Routes.HOME));
  }
}
