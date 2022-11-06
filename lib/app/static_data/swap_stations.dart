//
// Created on 20-10-2022 at 01:08 by

import 'package:clean_electric/app/data/user.dart';
import 'package:clean_electric/app/data/vehicle.dart';

import '../data/battery.dart';
import '../data/battery_swap_station.dart';

class FakeSwapStation {
  static final List<Battery> batteries = [
    Battery(bin: "24563258632", currentSoc: 32),
    Battery(bin: "24563258631", currentSoc: 32),
    Battery(bin: "24563258633", currentSoc: 32),
    Battery(bin: "24563258634", currentSoc: 32),
    Battery(bin: "24563258635", currentSoc: 32),
  ];

  static final Vehicle vehicle = Vehicle(vId: "12322542", batteries: batteries);

  static final User user = User(
      name: "Amit",
      vId: vehicle.vId,
      phoneNumber: "8887966666",
      email: "email.com");
  static final List<BatterySwapStation> stations = [
    BatterySwapStation(
      bssn: "bssn1",
      stationName: "Nalanda Charging Point",
      stationIncharge: "Dheeraj",
      isActive: true,
      vehicleInQueue: 2,
      batteries: batteries,
      altitude: 0,
      latitude: 1,
      longitude: 2,
    ),
    BatterySwapStation(
      bssn: "bssn2",
      stationName: "Rahul Energy Repo",
      stationIncharge: "Rahul",
      isActive: true,
      vehicleInQueue: 4,
      batteries: batteries,
      altitude: 0,
      latitude: 1,
      longitude: 2,
    ),
    BatterySwapStation(
      bssn: "bssn3",
      stationName: "Indian Energy Bank",
      stationIncharge: "Modi",
      isActive: false,
      vehicleInQueue: 25,
      batteries: batteries,
      altitude: 0,
      latitude: 1,
      longitude: 2,
    ),
    BatterySwapStation(
      bssn: "bssn4",
      stationName: "DLF Energy Station",
      stationIncharge: "Mahi",
      isActive: true,
      vehicleInQueue: 1,
      batteries: batteries,
      altitude: 0,
      latitude: 1,
      longitude: 2,
    ),
    BatterySwapStation(
      bssn: "bssn5",
      stationName: "Bihar Chargers",
      stationIncharge: "Nitish",
      isActive: true,
      vehicleInQueue: 22,
      batteries: batteries,
      altitude: 0,
      latitude: 1,
      longitude: 2,
    ),
    BatterySwapStation(
      bssn: "bssn6",
      stationName: "Clean Electric Energy Streams",
      stationIncharge: "Akash",
      isActive: true,
      vehicleInQueue: 52,
      batteries: batteries,
      altitude: 0,
      latitude: 1,
      longitude: 2,
    ),
  ];
}
