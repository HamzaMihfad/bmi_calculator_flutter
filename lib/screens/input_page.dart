import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_Calculator_flutter/components/icon_card.dart';
import 'package:bmi_Calculator_flutter/components/card1.dart';
import 'package:bmi_Calculator_flutter/constants/constants.dart';
import 'package:bmi_Calculator_flutter/components/RoundActionButton.dart';
import 'package:bmi_Calculator_flutter/calculator_brain.dart';
import 'package:bmi_Calculator_flutter/screens/results_page.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  double height = 160.0;
  int weight = 60;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card1(
                    cardColor:
                        gender == Gender.male ? kCardColor : kInactiveCardColor,
                    cardChild:
                        IconCard(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    onPress: () {
                      setState(() {
                        gender = gender == Gender.male ? null : Gender.male;
                        print(gender);
                      });
                    },
                    cardBorder: (gender == Gender.male
                        ? Border.all(width: 1.0, color: Color(0xff3c3f4e))
                        : null),
                  ),
                ),
                Expanded(
                  child: Card1(
                    cardColor: gender == Gender.female
                        ? kCardColor
                        : kInactiveCardColor,
                    cardChild:
                        IconCard(icon: FontAwesomeIcons.venus, label: 'MALE'),
                    onPress: () {
                      setState(() {
                        gender = gender == Gender.female ? null : Gender.female;
                        print(gender);
                      });
                    },
                    cardBorder: (gender == Gender.female
                        ? Border.all(width: 1.0, color: Color(0xff3c3f4e))
                        : null),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Card1(
              cardColor: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.floor().toString(),
                        style: kNumberLabel,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xffeb1555),
                      inactiveTrackColor: Color(0xff8d8e98),
                      thumbColor: Color(0xffeb1555),
                      overlayColor: Color(0x29eb1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 11.0,
                      ),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 22.0),
                    ),
                    child: Slider(
                      min: 50.0,
                      max: 220.0,
                      //activeColor: Color(0xffeb1555),
                      //inactiveColor: Color(0xff8d8e98),
                      value: height,
                      onChanged: (newValue) {
                        setState(() {
                          height = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card1(
                    cardColor: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberLabel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundActionButton(
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icons.remove,
                              tooltipMessage: 'decrement weight',
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            RoundActionButton(
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icons.add,
                              tooltipMessage: 'increment weight',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card1(
                    cardColor: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberLabel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundActionButton(
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: Icons.remove,
                              tooltipMessage: 'decrement age',
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            RoundActionButton(
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icons.add,
                              tooltipMessage: 'increment age',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.only(bottom: 5.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: Tooltip(
              message: 'Calculate your BMI',
              decoration: BoxDecoration(
                color: Color(0x405c5f3e),
                borderRadius: BorderRadius.circular(4.0),
              ),
              textStyle: TextStyle(color: Colors.white),
              child: FlatButton(
                child: Text(
                  'Calculate BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  CalculatorBrain calculatorBrain =
                      CalculatorBrain(height: height.round(), weight: weight);
                  //print(calculatorBrain.calculateBMI());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(calculatorBrain)),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
