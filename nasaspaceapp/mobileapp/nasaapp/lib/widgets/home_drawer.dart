import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text("Catch The Fire!"),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/home");
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.build),
            title: Text("Sensors Overview"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed("/arduino-overview-screen");
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.flight),
            title: Text("Drones"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/drone-screen");
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Notifications"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/message-screen");
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.cloud),
            title: Text("Weather Forecasts"),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed("/weather-forecast-screen");
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/settings-screen");
            },
          ),
        ],
      ),
    );
  }
}
