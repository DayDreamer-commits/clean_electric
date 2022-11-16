import 'package:clay_containers/clay_containers.dart';
import 'package:clean_electric/app/static_data/swap_stations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:get/get.dart';

import '../../../../widgets/battery_widget.dart';
import '../../../../widgets/header_widget.dart';
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
              pinned: true,
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
            SliverStickyHeader.builder(
              builder: (context, state) => const HeaderWidget(icon: Icons.electric_car, headerText: 'Cars',),

              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: 4,
                      (context, index) =>BatteryWidget(battery: FakeSwapStation.batteries.first,),
                ),
              ),
            ),
            SliverStickyHeader.builder(
              builder: (context, state) =>const HeaderWidget(icon: Icons.electric_rickshaw, headerText: 'Rickshaw',),
              sliver: SliverGrid(

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: 4,
                  (context, index) =>BatteryWidget(battery: FakeSwapStation.batteries.first,),
                ),
              ),
            ),
            SliverStickyHeader.builder(
              builder: (context, state) => const HeaderWidget(icon: Icons.electric_bike, headerText: 'Bike',),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: 8,
                      (context, index) =>BatteryWidget(battery: FakeSwapStation.batteries.first,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
