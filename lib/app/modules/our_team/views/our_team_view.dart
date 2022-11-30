import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../static_data/team.dart';
import '../controllers/our_team_controller.dart';

class OurTeamView extends GetView<OurTeamController> {
  const OurTeamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Clean Electric'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: teamMembers.length,
        itemBuilder: (context, index) {
          final member = teamMembers[index];
          return  Card(
            child: ListTile(
              title: Text(member.name),
            ),
          );
        },
      ),
    );
  }
}
