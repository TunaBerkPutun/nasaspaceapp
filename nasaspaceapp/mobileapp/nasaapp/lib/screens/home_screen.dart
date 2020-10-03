import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nasaapp/widgets/home_drawer.dart';
import 'package:nasaapp/widgets/basic_data_circindicator.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  final dateTime = DateFormat.Hms().format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(icon: Icon(Icons.info_outline), onPressed: () {}),
        ],
      ),
      drawer: HomeDrawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SleekProgressIndicator(
                data: "Humidity",
                initValue: 25,
                reverse: 0,
                dataMin: 0,
                dataMax: 100,
                unit: "%",
                status: "OK",
                updateTime: dateTime,
              ),
              SleekProgressIndicator(
                data: "Temperature",
                initValue: 35,
                reverse: 1,
                dataMin: -30,
                dataMax: 60,
                unit: "C",
                status: "OK",
                updateTime: dateTime,
              ),
              SleekProgressIndicator(
                data: "Wind",
                initValue: 7,
                reverse: 1,
                dataMin: 0,
                dataMax: 20,
                unit: "m/s",
                status: "OK",
                updateTime: dateTime,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
