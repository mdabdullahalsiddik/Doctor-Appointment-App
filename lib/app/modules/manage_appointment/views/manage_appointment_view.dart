import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manage_appointment_controller.dart';

class ManageAppointmentView extends GetView<ManageAppointmentController> {
  const ManageAppointmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ManageAppointmentView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ManageAppointmentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
