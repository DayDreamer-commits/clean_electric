import 'package:get/get.dart';

import '../controllers/ar_camera_controller.dart';

class ArCameraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArCameraController>(
      () => ArCameraController(),
    );
  }
}
