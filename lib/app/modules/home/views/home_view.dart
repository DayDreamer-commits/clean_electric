import 'package:clean_electric/app/static_data/swap_stations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Clean Electric'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(FakeSwapStation.user.name),
                accountEmail: Text(FakeSwapStation.user.email),
                currentAccountPicture: CircleAvatar(
                  child: Center(child: Text(FakeSwapStation.user.name[0])),
                ),
              ),
              ListTile(
                onTap: () => Get.toNamed(Routes.VEHICLE_DETAILS,
                    arguments: FakeSwapStation.vehicle),
                title: const Text("Vehicle Details"),
              ),
              ListTile(
                onTap: () => Get.toNamed(Routes.AR_CAMERA,
                    ),
                title: const Text("AR"),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: FakeSwapStation.stations.length,
          itemBuilder: (BuildContext context, int index) {
            return Hero(
              tag: FakeSwapStation.stations[index].bssn,
              child: Material(
                color: Colors.transparent,
                child: ListTile(
                  onTap: () => Get.toNamed(Routes.STATION_DETAILS,
                      arguments: FakeSwapStation.stations[index]),
                  leading: const Icon(Icons.charging_station),
                  title: Text(FakeSwapStation.stations[index].stationName),
                  subtitle:
                      Text(FakeSwapStation.stations[index].stationIncharge),
                  trailing: CircleAvatar(
                    child: Center(
                        child: Text(FakeSwapStation
                            .stations[index].batteries.length
                            .toString())),
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Get.toNamed(Routes.MAP),
          label: const Text("Map"),
          icon: const Icon(Icons.map),
        ),
      ),
    );
  }
}
