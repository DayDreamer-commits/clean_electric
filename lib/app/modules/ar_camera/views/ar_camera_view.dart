import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ar_camera_controller.dart';

class ArCameraView extends GetView<ArCameraController> {
  const ArCameraView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArCameraView'),
        centerTitle: true,
      ),
      body: ArCoreView(
        enableTapRecognizer: true,
        onArCoreViewCreated: controller.onArCoreViewCreated,),
    );
  }
}
