import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  changeScreenTwo() {
    setState(
      () {
        selectedAnswers = [];
        activeScreen = StartScreen(changeScreen);
      },
    );
  }

  changeScreen() {
    setState(
      () {
        activeScreen = QuestionScreen(
          onSelect: addSelectedAnswer,
        );
      },
    );
  }

  void addSelectedAnswer(String selectedAnswer) {
    selectedAnswers.add(selectedAnswer);

    if (selectedAnswers.length == QuestionData().questionAndAnswers.length) {
      setState(
        () {
          activeScreen = ResultScreen(
            userSelectedAnswers: selectedAnswers,
            restartQuiz: changeScreenTwo,
          );
        },
      );
    }
  }

  @override
  void initState() {
    activeScreen = StartScreen(changeScreen);
    super.initState();
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          //BoxDecoration is a helper method which can not be put in a separate
          //class.
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 69, 5, 149), Colors.purple],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}

///initState() is used to initialize the object with some addition 
///requirements.

///Expanded() widget is used to asign the maxAxisSize of main axis of its outside
///row or column widget to its child.