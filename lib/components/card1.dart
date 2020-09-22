import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  Card1(
      {@required this.cardColor,
      this.cardChild,
      this.onPress,
      this.cardBorder});

  final Color cardColor;
  final Widget cardChild;
  final Function onPress;
  final BoxBorder cardBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
          border: cardBorder,
        ),
        child: Center(child: cardChild),
      ),
    );
  }
}
