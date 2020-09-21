import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';
import 'card1.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;

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
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Card1(
              cardColor: kCardColor,
              cardChild: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        '180',
                        style: kNumberLabel,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card1(cardColor: kCardColor),
                ),
                Expanded(
                  child: Card1(cardColor: kCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
