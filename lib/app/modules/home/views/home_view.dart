import 'package:easy_health/app/modules/home/views/custom_appbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              CustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
