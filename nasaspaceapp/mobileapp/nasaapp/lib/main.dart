import 'package:flutter/material.dart';

import 'package:nasaapp/screens/arduino_overview_screen.dart';
import 'package:nasaapp/screens/drones_screen.dart';
import 'package:nasaapp/screens/home_screen.dart';
import 'package:nasaapp/screens/login_screen.dart';
import 'package:nasaapp/screens/messages_screen.dart';
import 'package:nasaapp/screens/settings_screen.dart';
import 'package:nasaapp/screens/weather_forecast_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catch The Fire!',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.blue,
        textTheme: TextTheme(
            headline6: TextStyle(color: Colors.white, fontSize: 20),
            headline5: TextStyle(color: Colors.black, fontSize: 28)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
      routes: {
        ArduinoOverviewScreen.routeName: (ctx) => ArduinoOverviewScreen(),
        DroneScreen.routeName: (ctx) => DroneScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        NotificationsScreen.routeName: (ctx) => NotificationsScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        WeatherForecastScreen.routeName: (ctx) => WeatherForecastScreen(),
      },
    );
  }
}
