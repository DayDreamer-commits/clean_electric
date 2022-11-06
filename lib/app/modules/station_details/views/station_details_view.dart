import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
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
              builder: (context, state) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClayContainer(
                  color: Colors.blue.shade200,
                  height: 200,
                  width: double.infinity,
                  curveType: CurveType.convex,
                  child: const Center(
                    child: Icon(
                      Icons.electric_car,
                      size: 128,
                    ),
                  ),
                ),
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: 4,
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClayContainer(
                      curveType: CurveType.concave,
                      color: Colors.blue.shade50,
                      child: const Center(
                        child: Icon(
                          Icons.battery_3_bar,
                          size: 64,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverStickyHeader.builder(
              builder: (context, state) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClayContainer(
                  color: Colors.blue.shade200,
                  height: 200,
                  width: double.infinity,
                  curveType: CurveType.convex,
                  child: const Center(
                    child: Icon(
                      Icons.electric_rickshaw,
                      size: 128,
                    ),
                  ),
                ),
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: 4,
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClayContainer(
                      curveType: CurveType.concave,
                      color: Colors.blue.shade50,
                      child: const Center(
                        child: Icon(
                          Icons.battery_3_bar,
                          size: 64,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverStickyHeader.builder(
              builder: (context, state) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClayContainer(
                  color: Colors.blue.shade200,
                  height: 200,
                  width: double.infinity,
                  curveType: CurveType.convex,
                  child: const Center(
                    child: Icon(
                      Icons.electric_bike,
                      size: 128,
                    ),
                  ),
                ),
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: 8,
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClayContainer(
                      curveType: CurveType.concave,
                      color: Colors.blue.shade50,
                      child: const Center(
                        child: Icon(
                          Icons.battery_3_bar,
                          size: 64,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
