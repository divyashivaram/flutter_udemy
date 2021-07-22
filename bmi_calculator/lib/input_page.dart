import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_container_content.dart';
import 'container_box.dart';
import 'constants.dart';

enum GenderSpecs { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderSpecs? selectedGender;

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
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerBox(
                    kDefaultCardColor,
                  ),
                ),
                Expanded(
                  child: ContainerBox(
                    kDefaultCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomButtonColor,
            height: kBottomButtonHeight,
            child: TextButton(
              onPressed: () {},
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
