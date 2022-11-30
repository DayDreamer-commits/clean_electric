import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';

class ArCameraController extends GetxController {



  late final ArCoreController arCoreController;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    arCoreController.dispose();
    super.onClose();
  }


  void onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    arCoreController.onNodeTap = (name) => onTapHandler(name);
    arCoreController.onPlaneTap = _handleOnPlaneTap;

  }


  Future _addSphere(ArCoreHitTestResult hit) async {
    final moonMaterial = ArCoreMaterial(color: Colors.grey);

    final moonShape = ArCoreSphere(
      materials: [moonMaterial],
      radius: 0.03,
    );

    final moon = ArCoreNode(
      shape: moonShape,
      position: vector.Vector3(0.2, 0, 0),
      rotation: vector.Vector4(0, 0, 0, 0),
    );

    final ByteData batteryTextureByte = await rootBundle.load('assets/images/battery.png');

    final batteryMaterial = ArCoreMaterial(color: const Color.fromARGB(120, 66, 134,  244) ,textureBytes:  batteryTextureByte.buffer.asUint8List() );

    final batteryShape = ArCoreCylinder(materials: [batteryMaterial],height: 0.1,radius: 0.1);

    final battery = ArCoreNode(shape: batteryShape, position: vector.Vector3(0.4, 0, 0),
      rotation: vector.Vector4(1, 0, 0, 0), );

    final ByteData textureBytes = await rootBundle.load('assets/images/earth.jpg');

    final earthMaterial = ArCoreMaterial(
        color: const Color.fromARGB(120, 66, 134, 244),
        textureBytes: textureBytes.buffer.asUint8List());

    final earthShape = ArCoreSphere(
      materials: [earthMaterial],
      radius: 0.1,
    );


    final earth = ArCoreNode(
        shape: earthShape,
        children: [moon,battery],
        position: hit.pose.translation + vector.Vector3(0.0, 1.0, 0.0),
        rotation: hit.pose.rotation);


    arCoreController.addArCoreNodeWithAnchor(battery);
  }

  void onTapHandler(String name) {

    Get.defaultDialog(title: "Tap Detected $name");  }
  void _handleOnPlaneTap(List<ArCoreHitTestResult> hits) {
    final hit = hits.first;


 _addSphere(hit);
  }

}
