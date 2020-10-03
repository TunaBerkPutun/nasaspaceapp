import 'package:flutter/material.dart';

import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SleekProgressIndicator extends StatefulWidget {
  final String data;
  final double initValue;
  SleekProgressIndicator(this.data, this.initValue);
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
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              child: SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  customColors: CustomSliderColors(
                    progressBarColors: [
                      Color.fromRGBO(76, 175, 80, 1),
                      Color.fromRGBO(255, 235, 59, 1),
                      Color.fromRGBO(255, 82, 82, 1),
                    ],
                    gradientStartAngle: 0,
                    gradientEndAngle: 180,
                  ),
                  infoProperties: InfoProperties(
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
                onChange: (double value) {},
              ),
            ),
            Column(
              children: [],
            )
          ]),
        ),
      ),
    );
  }
}
