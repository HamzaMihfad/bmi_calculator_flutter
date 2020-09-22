import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({this.onPress, this.icon, this.tooltipMessage});

  final Function onPress;
  final IconData icon;
  final String tooltipMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tooltip(
          margin: EdgeInsets.only(top: 4.0),
          message: (tooltipMessage != null ? tooltipMessage : 'hello'),
          textStyle: TextStyle(
              color:
                  (tooltipMessage != null ? Colors.white : Color(0x00000000))),
          decoration: BoxDecoration(
              color: (tooltipMessage != null
                  ? Color(0x405c5f3e)
                  : Color(0x00000000)),
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
