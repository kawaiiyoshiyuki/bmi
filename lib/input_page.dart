import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_content.dart';
import 'constants.dart';
import 'reusable_card.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  void setGender(Gender g) => selectedGender = g;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardChild(
                      selectedIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                      onPress: () {
                        setState(() {
                          setGender(Gender.male);
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardChild(
                      selectedIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                      onPress: () {
                        setState(() {
                          setGender(Gender.female);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: kInactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: kInactiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            color: kBottomContainerColor,
            width: double.infinity,
            child: Center(
                child: Text(
              'Calculate',
              style: TextStyle(fontSize: 25.0),
            )),
          )
        ],
      ),
      // floatingActionButton: Theme(
      //   data: ThemeData(accentColor: Colors.teal),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}
