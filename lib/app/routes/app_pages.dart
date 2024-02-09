import 'package:get/get.dart';

import '../modules/appoint/bindings/appoint_binding.dart';
import '../modules/appoint/views/appoint_view.dart';
import '../modules/e-prescription/bindings/e_prescription_binding.dart';
import '../modules/e-prescription/views/e_prescription_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/manage_appointment/bindings/manage_appointment_binding.dart';
import '../modules/manage_appointment/views/manage_appointment_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/profile_setting/bindings/profile_setting_binding.dart';
import '../modules/profile_setting/views/profile_setting_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.APPOINT,
      page: () => const AppointView(),
      binding: AppointBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MANAGE_APPOINTMENT,
      page: () => const ManageAppointmentView(),
      binding: ManageAppointmentBinding(),
    ),
    GetPage(
      name: _Paths.E_PRESCRIPTION,
      page: () => const EPrescriptionView(),
      binding: EPrescriptionBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTING,
      page: () => const ProfileSettingView(),
      binding: ProfileSettingBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
  ];
}
