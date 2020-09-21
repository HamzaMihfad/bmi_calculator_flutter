import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // sliderTheme: SliderTheme.of(context).copyWith(
        //   activeTrackColor: Color(0xffeb1555),
        //   thumbColor: Color(0xffeb1555),
        //   overlayColor: Color(0x29eb1555),
        //   thumbShape: RoundSliderThumbShape(
        //     enabledThumbRadius: 11.0,
        //   ),
        //   overlayShape: RoundSliderOverlayShape(overlayRadius: 22.0),
        // ),
        primaryColor: Color(0xff10102f),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xff0a0e21),
        // textTheme: TextTheme(
        //   body1: TextStyle(color: Colors.white),
        // ),
      ),
      home: InputPage(),
    );
  }
}
