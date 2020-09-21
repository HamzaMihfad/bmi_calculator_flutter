import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  IconCard({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18.0, color: Color(0xff8d8e98)),
        )
      ],
    );
  }
}
