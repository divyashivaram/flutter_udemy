import 'package:flutter/material.dart';
import 'package:quizzler_stub/question.dart';
import 'quiz_brain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];
  List<Question> questionBank = QuizBrain().questionBank;

  // List<bool> answers = [false, true, true];

  int questionNum = 0;

  Widget question(int qnum) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            questionBank[qnum].question ?? 'Question unavailable',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Icon correct() {
    return Icon(
      Icons.check,
      color: Colors.green,
    );
  }

  Icon wrong() {
    return Icon(
      Icons.clear,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        question(questionNum),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Container(
                height: 80.0,
                width: 500.0,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                print('The user picked True');
                setState(() {
                  print('[True] Question num is $questionNum');
                  if (questionNum < 2) {
                    if (questionBank[questionNum].answer == true) {
                      scorekeeper.add(
                        correct(),
                      );
                      questionNum++;
                    } else {
                      scorekeeper.add(
                        wrong(),
                      );
                      questionNum++;
                    }
                  } else {
                    questionNum = 0;
                    scorekeeper = [];
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Container(
                height: 80.0,
                width: 500,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                print('The user picked False');
                setState(() {
                  print('[False] Question num is $questionNum');
                  if (questionNum < 2) {
                    print(questionBank[questionNum].answer);
                    if (questionBank[questionNum].answer == false) {
                      scorekeeper.add(
                        correct(),
                      );
                      questionNum++;
                    } else {
                      scorekeeper.add(
                        wrong(),
                      );
                      questionNum++;
                    }
                  } else {
                    questionNum = 0;
                    scorekeeper = [];
                  }
                });
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
