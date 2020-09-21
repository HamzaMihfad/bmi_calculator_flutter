import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({this.onPress, this.icon});

  final Function onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tooltip(
          margin: EdgeInsets.only(top: 4.0),
          message: 'hello from tooltip',
          textStyle: TextStyle(color: Colors.white),
          decoration: BoxDecoration(
              color: Color(0x405c5f3e),
              borderRadius: BorderRadius.circular(4.0)),
          child: RawMaterialButton(
            child: Icon(icon),
            onPressed: onPress,
            elevation: 6.0,
            constraints: BoxConstraints.tightFor(
              width: 56.0,
              height: 56.0,
            ),
            //shape: CircleBorder(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Color(0xff5c5f6e),
          ),
        ),
        // FloatingActionButton(),
      ],
    );
  }
}
