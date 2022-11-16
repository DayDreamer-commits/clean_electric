import 'package:get/get.dart';

import '../modules/ar_camera/bindings/ar_camera_binding.dart';
import '../modules/ar_camera/views/ar_camera_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/map/bindings/map_binding.dart';
import '../modules/map/views/map_view.dart';
import '../modules/station_details/bindings/station_details_binding.dart';
import '../modules/station_details/views/station_details_view.dart';
import '../modules/vehicle_details/bindings/vehicle_details_binding.dart';
import '../modules/vehicle_details/views/vehicle_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.VEHICLE_DETAILS,
      page: () => const VehicleDetailsView(),
      binding: VehicleDetailsBinding(),
    ),
    GetPage(
      name: _Paths.STATION_DETAILS,
      page: () => const StationDetailsView(),
      binding: StationDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => const MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.AR_CAMERA,
      page: () => const ArCameraView(),
      binding: ArCameraBinding(),
    ),
  ];
}
