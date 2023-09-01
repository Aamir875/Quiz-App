import 'package:flutter/material.dart';
import 'package:quiz_app/question_setup.dart';
import 'package:quiz_app/data/question_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelect,
  });
  final void Function(String) onSelect;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionNumber = 0;

  void changeQuestion(String answerText) {
    setState(
      () {
        widget.onSelect(answerText);
        questionNumber++;
      },
    );
  }

  @override
  Widget build(context) {
    return QuestionSetup(
      changeQuestion,
      QuestionData().questionAndAnswers[questionNumber],
    );
  }
}

// 'what are the main building blocks of Flutter UIs',
        // [
        //   'Functions',
        //   'Components',
        //   'Blocks',
        //   'Widgets',
        // ],

///Here we are managing the questionNumber as State because questionNumber
///will tell us that which question will be shown on screen.