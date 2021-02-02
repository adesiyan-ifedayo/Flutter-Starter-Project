import 'package:flutter/material.dart';

const bottomContainerHeight = 70.0;
const Color activeCardColor = Color(0XFF1D1E33);
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
                Expanded(child: ReusableCard(colour: activeCardColor),
                ),
                Expanded(child: ReusableCard(colour: activeCardColor,),
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

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        )
    );
  }
}

