import 'package:flutter/material.dart';
import 'package:nasaapp/widgets/home_drawer.dart';

class NotificationsScreen extends StatelessWidget {
  static const routeName = "/notifications-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        actions: [
          IconButton(icon: Icon(Icons.info_outline), onPressed: () {}),
        ],
      ),
      drawer: HomeDrawer(),
      body: Container(),
    );
  }
}
