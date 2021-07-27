import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import '../components/container_box.dart';

class Results extends StatelessWidget {
  final String bmiResult;
  final String bmiValue;
  final String bmiRangeText;

  final String bmiDetailText;

  Results(this.bmiResult, this.bmiValue, this.bmiRangeText, this.bmiDetailText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultCardColor,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40.0),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerBox(
              kActiveCardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      bmiResult.toUpperCase(),
                      style: kBmiTitleStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiValue,
                      style: kBmiNumStyle,
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Text(
                          bmiRangeText,
                          style: kBmidescriptionStyle,
                        ),
                      ),
                      Center(
                        child: Text(
                          '12345',
                          style: kBmidescriptionStyle,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      bmiDetailText,
                      style: kBmidescriptionStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(() {
            Navigator.pop(context);
          }, 'Re-Calculate BMI')
        ],
      ),
    );
  }
}
