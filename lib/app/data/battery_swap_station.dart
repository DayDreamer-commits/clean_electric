//
// Created on 18-10-2022 at 18:19 by Gunjan

import 'battery.dart';

class BatterySwapStation {
  final String bssn;
  final String stationName;
  final String stationIncharge;
  final bool isActive;
  final int vehicleInQueue;
  final double latitude;
  final double longitude;
  final double altitude;
  final List<Battery> batteries;

  const BatterySwapStation({
    required this.bssn,
    required this.stationName,
    required this.stationIncharge,
    required this.isActive,
    required this.vehicleInQueue,
    required this.latitude,
    required this.longitude,
    required this.altitude,
    required this.batteries,
  });

  BatterySwapStation copyWith({
    String? bssn,
    String? stationName,
    String? stationIncharge,
    bool? isActive,
    int? vehicleInQueue,
    double? latitude,
    double? longitude,
    double? altitude,
    List<Battery>? batteries,
  }) {
    return BatterySwapStation(
      bssn: bssn ?? this.bssn,
      stationName: stationName ?? this.stationName,
      stationIncharge: stationIncharge ?? this.stationIncharge,
      isActive: isActive ?? this.isActive,
      vehicleInQueue: vehicleInQueue ?? this.vehicleInQueue,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      altitude: altitude ?? this.altitude,
      batteries: batteries ?? this.batteries,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bssn': bssn,
      'stationName': stationName,
      'stationIncharge': stationIncharge,
      'isActive': isActive,
      'vehicleInQueue': vehicleInQueue,
      'latitude': latitude,
      'longitude': longitude,
      'altitude': altitude,
      'batteries': batteries,
    };
  }

  factory BatterySwapStation.fromMap(Map<String, dynamic> map) {
    return BatterySwapStation(
      bssn: map['bssn'] as String,
      stationName: map['stationName'] as String,
      stationIncharge: map['stationIncharge'] as String,
      isActive: map['isActive'] as bool,
      vehicleInQueue: map['vehicleInQueue'] as int,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      altitude: map['altitude'] as double,
      batteries: map['batteries'] as List<Battery>,
    );
  }
}
