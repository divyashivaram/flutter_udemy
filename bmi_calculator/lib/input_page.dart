import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_container_content.dart';
import 'container_box.dart';

const bottomContainerHeight = 100.0;
Color activeContainerColor = Color(0xff262A4D);
const bottomButtonColor = Color(0xffFB2767);
enum GenderSpecs { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color updateColor(GenderSpecs chosenGender) {
    if (chosenGender == GenderSpecs.Male) {
      print(chosenGender);
    } else {
      print(chosenGender);
    }
    return Colors.white;
  }

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
                        // activeContainerColor = updateColor(GenderSpecs.Female);
                      });
                    },
                    child: ContainerBox(
                      activeContainerColor,
                      IconContainerContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // activeContainerColor = updateColor(GenderSpecs.Male);
                      });
                    },
                    child: ContainerBox(
                      activeContainerColor,
                      IconContainerContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerBox(
              activeContainerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ContainerBox(
                    activeContainerColor,
                  ),
                ),
                Expanded(
                  child: ContainerBox(
                    activeContainerColor,
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
