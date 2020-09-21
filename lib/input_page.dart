import 'package:flutter/material.dart';

const bottomContainerHeight = 65.0;
const bottomContainerColor = Color(0xffeb1555);
const cardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: Card1(cardColor: cardColor),
                ),
                Expanded(
                  child: Card1(cardColor: cardColor),
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
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  Card1({@required this.cardColor});

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
