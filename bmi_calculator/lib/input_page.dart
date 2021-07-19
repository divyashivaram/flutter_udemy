import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_container_content.dart';
import 'container_box.dart';

const bottomContainerHeight = 100.0;
Color defaultCardColor = Color(0xff111428);
Color activeCardColor = Color(0xff1D1F33);
const bottomButtonColor = Color(0xffFB2767);
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderSpecs.Female;
                      });
                    },
                    child: ContainerBox(
                      selectedGender == GenderSpecs.Female
                          ? activeCardColor
                          : defaultCardColor,
                      IconContainerContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderSpecs.Male;
                      });
                    },
                    child: ContainerBox(
                      selectedGender == GenderSpecs.Male
                          ? activeCardColor
                          : defaultCardColor,
                      IconContainerContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerBox(
              defaultCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerBox(
                    defaultCardColor,
                  ),
                ),
                Expanded(
                  child: ContainerBox(
                    defaultCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            height: bottomContainerHeight,
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
