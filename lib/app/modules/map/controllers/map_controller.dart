import 'package:flutter_osm_plugin/flutter_osm_plugin.dart' as osm;
import 'package:get/get.dart';

class MapController extends GetxController {
  osm.MapController mapController = osm.MapController(
    initMapWithUserPosition: true,
    initPosition: osm.GeoPoint(latitude: 23.265942,  longitude: 77.472448,),


  );
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
    mapController.dispose();
    super.onClose();
  }
}
