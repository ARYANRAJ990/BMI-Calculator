import 'package:bmi_calculator/Bottom_Button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import'reusable.dart';
import 'package:bmi_calculator/Calculator_Brain.dart';
import'input_page.dart';

class result extends StatelessWidget {
  const result({required this.bmiResult, required this .resultText, required this.interpretation});
final String bmiResult;
final String resultText;
final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Container(
              child: Text('Your Result',
        style: KTextResult),
            )
        ),
            Expanded(
              flex: 5,
              child: Container(
                color:Colors.black ,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center ,
                  children: <Widget>[
                    Text(resultText,style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold,color: Colors.greenAccent
                    ),),
                    Text(bmiResult,style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 30,
                      color: Colors.green
                    ),),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.lightGreen,fontSize: 20,
                      fontWeight: FontWeight.bold),
                    ),

                    BottomButton(onTap: (){
                      Navigator.pop(context);
                    }
                        , Bottombutton: 'RE-CALCULATE')

                    
                  ],
                ) ,

              ),
            )
          ],
        ),
    );
  }
}
