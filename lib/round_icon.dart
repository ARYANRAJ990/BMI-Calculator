import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon,required this.onPress});
  final IconData icon;
  final Function () onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,
        color: Colors.black,),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Colors.grey,
      onPressed: onPress,
    );
  }
}