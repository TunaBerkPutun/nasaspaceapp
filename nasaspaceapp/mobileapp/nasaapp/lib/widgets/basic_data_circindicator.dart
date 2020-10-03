import 'package:flutter/material.dart';

import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SleekProgressIndicator extends StatefulWidget {
  final String data;
  final double initValue;
  final int reverse;
  final double dataMin;
  final double dataMax;
  final String unit;
  final String status;
  final String updateTime;

  final colors = [
    Color.fromRGBO(76, 175, 80, 1),
    Color.fromRGBO(255, 235, 59, 1),
    Color.fromRGBO(255, 82, 82, 1),
  ];

  SleekProgressIndicator({
    this.data = "x",
    this.initValue = 0,
    this.reverse = 0,
    this.dataMin = 0,
    this.dataMax = 100,
    this.unit = "%",
    this.status = "",
    this.updateTime = "",
  });

  List gradColors(int reverse) {
    if (reverse == 1) {
      return colors.reversed.toList();
    } else {
      return colors;
    }
  }

  @override
  _SleekProgressIndicatorState createState() => _SleekProgressIndicatorState();
}

class _SleekProgressIndicatorState extends State<SleekProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: 150,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                child: SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                    customColors: CustomSliderColors(
                      progressBarColors: widget.gradColors(widget.reverse),
                      gradientStartAngle: 0,
                      gradientEndAngle: 180,
                    ),
                    infoProperties: InfoProperties(
                      modifier: (percentage) {
                        return "${percentage.toStringAsFixed(0)} ${widget.unit}";
                      },
                      bottomLabelText: widget.data,
                      mainLabelStyle: TextStyle(
                        color: Color.fromRGBO(255, 82, 82, 1),
                        fontSize: 20,
                      ),
                    ),
                    size: 120,
                    customWidths: CustomSliderWidths(
                      progressBarWidth: 10,
                    ),
                  ),
                  initialValue: widget.initValue,
                  min: widget.dataMin,
                  max: widget.dataMax,
                  onChange: (double value) {},
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text(
                      "STATUS: ${widget.status}",
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Last updated: ${widget.updateTime}",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
