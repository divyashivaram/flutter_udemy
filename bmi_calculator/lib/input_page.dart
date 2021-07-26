import 'package:bmi_calculator/results.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_container_content.dart';
import 'container_box.dart';
import 'constants.dart';
import 'results.dart';

enum GenderSpecs { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderSpecs? selectedGender;
  int height = 180;
  int weight = 30;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerBox(
                    selectedGender == GenderSpecs.Female
                        ? kActiveCardColor
                        : kDefaultCardColor,
                    IconContainerContent(FontAwesomeIcons.venus, 'FEMALE'),
                    () {
                      setState(() {
                        selectedGender = GenderSpecs.Female;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ContainerBox(
                    selectedGender == GenderSpecs.Male
                        ? kActiveCardColor
                        : kDefaultCardColor,
                    IconContainerContent(FontAwesomeIcons.mars, 'MALE'),
                    () {
                      setState(() {
                        selectedGender = GenderSpecs.Male;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerBox(
              kDefaultCardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text('cm'),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      thumbColor: kBottomButtonColor,
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey.shade800,
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: Color(0x51FB2767),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 200.0,
                      onChanged: (double newValue) {
                        setState(
                          () {
                            height = newValue.round();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerBox(
                    kDefaultCardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              Icons.remove,
                              () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            RoundIconButton(
                              Icons.add,
                              () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ContainerBox(
                    kDefaultCardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              Icons.remove,
                              () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            RoundIconButton(
                              Icons.add,
                              () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomButtonColor,
            height: kBottomButtonHeight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Results(),
                  ),
                );
              },
              child: Text(
                "Calculate BMI",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
