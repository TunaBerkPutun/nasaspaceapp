import 'package:flutter/material.dart';
import 'package:nasaapp/widgets/home_drawer.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = "/settings-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      drawer: HomeDrawer(),
      body: Container(),
    );
  }
}
