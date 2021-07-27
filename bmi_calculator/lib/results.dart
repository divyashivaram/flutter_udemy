import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'container_box.dart';

class Results extends StatelessWidget {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                      'OVERWEIGHT',
                      style: kBmiTitleStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      '26.7',
                      style: kBmiNumStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      'You have a higher than normal body weight. Try to exercise more.',
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
          }, 'Recalculate BMI')
        ],
      ),
    );
  }
}
