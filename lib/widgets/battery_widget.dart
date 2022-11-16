import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:clean_electric/app/data/battery.dart';
import 'package:flutter/material.dart';

class BatteryWidget extends StatelessWidget {

  final Battery battery;
  const BatteryWidget({Key? key, required this.battery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClayContainer(
        curveType: CurveType.concave,
        color: Colors.blue.shade50,
        child: const Center(
          child: Icon(
            Icons.battery_3_bar,
            size: 48,
          ),
        ),
      ),
    );
  }
}
