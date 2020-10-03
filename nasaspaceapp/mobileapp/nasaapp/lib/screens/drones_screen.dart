import 'package:flutter/material.dart';

import 'package:nasaapp/providers/drone_data_provider.dart';
import 'package:nasaapp/widgets/drone_listtile.dart';
import 'package:nasaapp/widgets/home_drawer.dart';

class DroneScreen extends StatelessWidget {
  static const routeName = "/drone-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drones"),
        actions: [
          IconButton(icon: Icon(Icons.info_outline), onPressed: () {}),
        ],
      ),
      drawer: HomeDrawer(),
      body: RefreshIndicator(
        onRefresh: () {
          return Future(null);
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => DroneListTile(
              (index + 1).toString(),
              mainDroneStatus[index],
              placeholderDroneInfoList[index],
            ),
          ),
        ),
      ),
    );
  }
}
