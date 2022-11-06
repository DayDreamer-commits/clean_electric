//
// Created on 20-10-2022 at 01:37 by Gunjan
import 'battery.dart';

class Vehicle {
  String vId;
  List<Battery> batteries;

  Vehicle({
    required this.vId,
    required this.batteries,
  });

  Vehicle copyWith({
    String? vId,
    List<Battery>? batteries,
  }) {
    return Vehicle(
      vId: vId ?? this.vId,
      batteries: batteries ?? this.batteries,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'vId': vId,
      'batteries': batteries,
    };
  }

  factory Vehicle.fromMap(Map<String, dynamic> map) {
    return Vehicle(
      vId: map['vId'] as String,
      batteries: map['batteries'] as List<Battery>,
    );
  }
}
