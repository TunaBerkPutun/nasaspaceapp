import 'package:flutter/material.dart';

import 'package:nasaapp/providers/arduino_data_provider.dart';
import 'package:nasaapp/widgets/home_drawer.dart';
import 'package:nasaapp/widgets/sensor_listtile.dart';

class ArduinoOverviewScreen extends StatelessWidget {
  static const routeName = "/arduino-overview-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sensor Overview"),
      ),
      drawer: HomeDrawer(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => SensorListTile(
              (index + 7000).toString(),
              mainStatus[index],
              placeholderSensorStatusList[index]),
        ),
      ),
    );
  }
}
