import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

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
    super.onClose();
  }


  void onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    arCoreController.onNodeTap = (name) => onTapHandler(name);
    arCoreController.onPlaneTap = _handleOnPlaneTap;

  }

  void onTapHandler(String name) {

    Get.defaultDialog(title: "Tap Detected");  }
  void _handleOnPlaneTap(List<ArCoreHitTestResult> hits) {
    final hit = hits.first;


    final moonMaterial = ArCoreMaterial(color: Colors.grey);

    final moonShape = ArCoreSphere(
      materials: [moonMaterial],
      radius: 0.03,
    );

    vector.Vector3? position = vector.Vector3(0.2, 0, 0);
    vector.Vector4? rotation = vector.Vector4(0, 0, 0, 0);

    final moon = ArCoreNode(
      shape: moonShape,
      position: position,
      rotation: rotation,
    );

    final earthMaterial = ArCoreMaterial(
        color: const Color.fromARGB(120, 66, 134, 244),);

    final earthShape = ArCoreSphere(
      materials: [earthMaterial],
      radius: 0.1,
    );

    final earth = ArCoreNode(
        shape: earthShape,
        children: [moon],
        position: hit.pose.translation + vector.Vector3(0.0, 1.0, 0.0),
        rotation: hit.pose.rotation);

    arCoreController.addArCoreNodeWithAnchor(earth);
  }

}
