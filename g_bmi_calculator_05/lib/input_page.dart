import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';


const bottomContainerHeight = 70.0;
const Color activeCardColor = Color(0XFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0XFFEB1555);



class InputPage extends StatefulWidget {
  

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: GestureDetector(
                  onTap: (){
                    print('pressed');
                  },
                  child: ReusableCard(
                      colour: inactiveCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',),
                  ),
                ),
                ),
                Expanded(child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),),
                )
              ],
            )
          ),
          Expanded(child: ReusableCard(colour: activeCardColor)),
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: activeCardColor),
                  ),
                  Expanded(child: ReusableCard(colour: activeCardColor),)
                ],
              )
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight
          )
        ],
      ),
    );
  }
}




