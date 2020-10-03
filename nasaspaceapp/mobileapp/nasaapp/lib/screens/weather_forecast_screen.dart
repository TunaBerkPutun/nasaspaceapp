import 'package:flutter/material.dart';
import 'package:nasaapp/widgets/home_drawer.dart';

class WeatherForecastScreen extends StatelessWidget {
  static const routeName = "/weather-forecast-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Forecast"),
        actions: [
          IconButton(icon: Icon(Icons.info_outline), onPressed: () {}),
        ],
      ),
      drawer: HomeDrawer(),
      body: Container(),
    );
  }
}
