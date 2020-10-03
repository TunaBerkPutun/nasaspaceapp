import 'package:flutter/material.dart';
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
      body: Container(),
    );
  }
}
