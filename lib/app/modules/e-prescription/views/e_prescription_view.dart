import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/e_prescription_controller.dart';

class EPrescriptionView extends GetView<EPrescriptionController> {
  const EPrescriptionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EPrescriptionView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EPrescriptionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
