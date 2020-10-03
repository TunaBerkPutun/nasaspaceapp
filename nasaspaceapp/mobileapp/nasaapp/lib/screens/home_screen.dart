import 'package:flutter/material.dart';
import 'package:nasaapp/widgets/home_drawer.dart';
import 'package:nasaapp/widgets/basic_data_circindicator.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: HomeDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SleekProgressIndicator("Humidity", 45),
              SleekProgressIndicator(
                "Temperature",
                27,
              ),
              SleekProgressIndicator("Wind Speed", 15),
              SleekProgressIndicator("Humidity", 35),
            ],
          ),
        ),
      ),
    );
  }
}
