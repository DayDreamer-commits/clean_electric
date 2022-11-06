import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vehicle_details_controller.dart';

class VehicleDetailsView extends GetView<VehicleDetailsController> {
  const VehicleDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VehicleDetailsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'VehicleDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
