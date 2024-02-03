import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon-contenct.dart';
import 'reusable.dart';
import 'constants.dart';
import 'Bottom_Button.dart';
import 'round_icon.dart';
import 'input_page.dart';


class BottomButton extends StatelessWidget {
  const BottomButton({ required this.onTap, required this.Bottombutton
  });
  final Function() onTap;
  final String Bottombutton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,

      child: Container(
        child: Center(child: Text(
          Bottombutton,style: KTextStyle,)),
        margin: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        height: KbottomContainerHeight,
        color: bottomContainerColor,
    )

    );
  }
}