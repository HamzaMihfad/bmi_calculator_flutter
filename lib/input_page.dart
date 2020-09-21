import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card.dart';
import 'card1.dart';

const bottomContainerHeight = 65.0;
const bottomContainerColor = Color(0xffeb1555);
const cardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xff101328);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  var gender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                        femaleCardColor = inactiveCardColor;
                        maleCardColor = (maleCardColor == cardColor
                            ? inactiveCardColor
                            : cardColor);
                      });
                    },
                    child: Card1(
                      cardColor: maleCardColor,
                      cardChild:
                          IconCard(icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                        maleCardColor = inactiveCardColor;
                        femaleCardColor = (femaleCardColor == cardColor
                            ? inactiveCardColor
                            : cardColor);
                      });
                    },
                    child: Card1(
                      cardColor: femaleCardColor,
                      cardChild:
                          IconCard(icon: FontAwesomeIcons.venus, label: 'MALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Card1(cardColor: cardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Card1(cardColor: cardColor),
                ),
                Expanded(
                  child: Card1(cardColor: cardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
