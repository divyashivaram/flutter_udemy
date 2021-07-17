import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_container_content.dart';
import 'container_box.dart';

const bottomContainerHeight = 100.0;
const activeContainerColor = Color(0xff262A4D);
const bottomButtonColor = Color(0xffFB2767);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                ContainerBox(
                  activeContainerColor,
                  IconContainerContent(FontAwesomeIcons.venus, 'FEMALE'),
                ),
                ContainerBox(
                  activeContainerColor,
                  IconContainerContent(FontAwesomeIcons.mars, 'MALE'),
                ),
              ],
            ),
          ),
          ContainerBox(
            activeContainerColor,
          ),
          Expanded(
            child: Row(
              children: [
                ContainerBox(
                  activeContainerColor,
                ),
                ContainerBox(
                  activeContainerColor,
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
