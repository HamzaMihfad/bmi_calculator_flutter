import 'package:flutter/material.dart';

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
                    child: Card1(cardColor: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: Card1(cardColor: Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card1(cardColor: Color(0xFF1D1E33)),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Card1(cardColor: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: Card1(cardColor: Color(0xFF1D1E33)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Card1 extends StatelessWidget {
  Card1({@required this.cardColor});

  Color cardColor;

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
