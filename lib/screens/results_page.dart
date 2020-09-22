import 'package:flutter/material.dart';
import 'package:bmi_Calculator_flutter/components/card1.dart';
import 'package:bmi_Calculator_flutter/constants/constants.dart';
import 'package:bmi_Calculator_flutter/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.calculatorBrain);
  final CalculatorBrain calculatorBrain;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08),
              child: Text(
                'Your Results',
                style: kNumberLabel,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.07),
                child: Card1(
                  cardColor: kCardColor,
                  cardChild: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${calculatorBrain.getResult()}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          '${calculatorBrain.calculateBMI()}',
                          style: TextStyle(
                            fontSize: 70.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          '${calculatorBrain.getInterpretation()}',
                          textAlign: TextAlign.center,
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomContainerColor,
                width: double.infinity,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                padding: EdgeInsets.only(bottom: 5.0),
                height: kBottomContainerHeight,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
