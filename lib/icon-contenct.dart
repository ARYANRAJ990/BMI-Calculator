import 'package:flutter/material.dart';
import 'constants.dart';
class IconContent extends StatelessWidget {
  const IconContent({ required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80, // Adjust the size as needed
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label, style: KlabelTextStyle,
        ),
      ],
    );
  }
}