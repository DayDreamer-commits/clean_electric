import 'package:clean_electric/widgets/VehicleBatteryRepositoryWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/station_details_controller.dart';

class StationDetailsView extends GetView<StationDetailsController> {
  const StationDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              floating: true,
              title: Hero(
                tag: controller.station.bssn,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    controller.station.stationName,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              centerTitle: true,
            ),
            const VehicleBatteryRepositoryWidget(
              icon: Icons.electric_car,
              headerText: 'Cars', batteries: [],
            ),
            const VehicleBatteryRepositoryWidget(
              icon: Icons.electric_rickshaw,
              headerText: 'Rickshaw', batteries: [],
            ),
            const VehicleBatteryRepositoryWidget(
              icon: Icons.electric_bike,
              headerText: 'Bikes', batteries: [],
            ),
          ],
        ),
      ),
    );
  }
}
