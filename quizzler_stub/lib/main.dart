import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
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
  QuizBrain quizbrain = QuizBrain();

  void checkAnswer(bool userAnswer) {
    bool correctAnswer = quizbrain.getAnswer();
    bool endOfQuiz = quizbrain.isFinished();

    if (endOfQuiz == true) {
      Alert(
        context: context,
        title: "QUIZZLER",
        desc: "Reached the end of quiz",
      ).show();
      quizbrain.resetQuiz();
      scorekeeper = [];
    } else {
      if (correctAnswer == userAnswer) {
        scorekeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scorekeeper.add(
          Icon(
            Icons.clear,
            color: Colors.red,
          ),
        );
      }
    }
  }

  Widget question() {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            quizbrain.getQuestionText(),
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
        question(),
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
                setState(() {
                  checkAnswer(true);
                  quizbrain.nextQuestion();
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
                setState(() {
                  checkAnswer(false);
                  quizbrain.nextQuestion();
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
