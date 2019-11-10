import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 80.0;
const Color bottomContainerColor = Color(0xFFEB1555);
const Color activeCardColor = Color(0xFF1D1E33);
const Color inActiveCardColor = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  Gender selectedGender;

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      bgcolor: (selectedGender == Gender.male)
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild:
                          CustomIconContent('MALE', FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      bgcolor: (selectedGender == Gender.female)
                          ? activeCardColor
                          : inActiveCardColor,
                      cardChild:
                          CustomIconContent('FEMALE', FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              bgcolor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    bgcolor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgcolor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            //full width
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }

  /*
  void updateColor(Gender g) {
    //1 for Male , 2 for Female
    setState(() {
      if (g == Gender.male) {
        if (maleCardColor == inActiveCardColor) {
          maleCardColor = activeCardColor;
          femaleCardColor = inActiveCardColor;
        } else {
          maleCardColor = inActiveCardColor;
        }
      } else if (g == Gender.female) {
        if (femaleCardColor == inActiveCardColor) {
          femaleCardColor = activeCardColor;
          maleCardColor = inActiveCardColor;
        } else {
          femaleCardColor = inActiveCardColor;
        }
      }
    });
  }
  */
}
