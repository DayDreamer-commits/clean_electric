import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../controllers/qr_scanner_controller.dart';

class QrScannerView extends GetView<QrScannerController> {
  const QrScannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('QrScannerView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: MobileScanner(
                onDetect: controller.onDetect,
                controller: controller.qrController,
                allowDuplicates: false,
              ),
            ),
            SizedBox(
              height: 100,
              child: Obx(()=> Text(controller.scannedText.value)),
            ),

          ],
        ),
      ),
    );
  }
}
