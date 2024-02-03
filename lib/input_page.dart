import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon-contenct.dart';
import 'reusable.dart';
import 'constants.dart';
import 'Bottom_Button.dart';
import 'round_icon.dart';
import 'Calculator_Brain.dart';
import 'result.dart';


const bottomContainerColor = Color(0XFFEB1555);
enum Gender{
  male,
  female,
}
int height=180;
int weight=61;
int age=12;
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 Gender ? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(

                    onPress: (){
                      setState(() {
                        selectedGender= Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? KactiveCardColor : KinactiveCardColor,
                    childCard: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender= Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? KactiveCardColor : KinactiveCardColor,
                    childCard: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: (){},
              colour: KactiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),
                      style: KNumberTextStyle),
                       Text('cm')
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.purple,
                      overlayColor: Colors.pink,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30,
                    ),
                    ),
                    child: Slider(value: height.toDouble(),
                        min:120.0,
                        max: 220.0,
                        activeColor: Colors.red,
                        inactiveColor: Colors.grey,
                        onChanged: (double newValue){
                      setState(() {
                        height=newValue.round();
                      });
                        }
                    ),
                  )
                ],
              ),
            ),
          ),
              Expanded(
              child: Row(
                children: <Widget>[
                Expanded(
                child: ReusableCard(
                  onPress: (){},
                colour: KactiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Weight',
                    ),
                      Text( weight.toString(),
                      style: KNumberTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(icon: Icons.remove,
                          onPress: (){
                          setState(() {
                            weight--;
                          });
                          },
                      ),
                        SizedBox(width: 12),
                        RoundIconButton(icon: Icons.add,
                          onPress: (){
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                ),
                ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){},
                      colour: KactiveCardColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'age',
                          ),
                          Text( age.toString(),
                            style: KNumberTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(icon: Icons.remove,
                                onPress: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(width: 12),
                              RoundIconButton(icon: Icons.add,
                                onPress: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                ),
                ),
          BottomButton(
            Bottombutton: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => result(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.interpretation(),
                  ),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}


