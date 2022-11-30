import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import '../app/data/battery.dart';
import '../app/static_data/swap_stations.dart';
import 'battery_widget.dart';
import 'header_widget.dart';

class VehicleBatteryRepositoryWidget extends StatefulWidget {
  final IconData icon;
  final String headerText;
  final List<Battery> batteries;

  const VehicleBatteryRepositoryWidget(
      {Key? key, required this.icon, required this.headerText, required this.batteries})
      : super(key: key);

  @override
  State<VehicleBatteryRepositoryWidget> createState() =>
      _VehicleBatteryRepositoryWidgetState();
}

class _VehicleBatteryRepositoryWidgetState
    extends State<VehicleBatteryRepositoryWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      sliver: SliverStickyHeader.builder(
        builder: (context, state) => GestureDetector(
          onTap: () => setState(
            () {
              isExpanded = !isExpanded;
            },
          ),
          child: HeaderWidget(
            icon: widget.icon,
            headerText: widget.headerText,
          ),
        ),
        sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
          ),
          delegate: SliverChildBuilderDelegate(
            childCount: isExpanded ? 8 : 0,
            (context, index) => BatteryWidget(
              battery: FakeSwapStation.batteries.first,
            ),
          ),
        ),
      ),
    );
  }
}
