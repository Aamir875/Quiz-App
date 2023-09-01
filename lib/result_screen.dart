import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/result_question.dart';
import 'package:quiz_app/data/question_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.userSelectedAnswers,
      required this.restartQuiz});
  final List<String> userSelectedAnswers;
  final void Function() restartQuiz;

  // int correctAnswers() {
  //   var correctAnswers = 0;
  //   for (int i = 0; i < userSelectedAnswers.length; i++) {
  //     if (userSelectedAnswers[i] ==
  //         QuestionData().questionAndAnswers[i].options[0]) {
  //       correctAnswers++;
  //     }
  //   }
  //   return correctAnswers;
  // }

  List<Map<String, Object>> getsummary() {
    List<Map<String, Object>> summaryOfResult = [];
    for (int i = 0; i < userSelectedAnswers.length; i++) {
      summaryOfResult.add(
        {
          'questionNumber': i,
          'question': QuestionData().questionAndAnswers[i].question,
          'correctAnswer': QuestionData().questionAndAnswers[i].options[0],
          'selectedAnswer': userSelectedAnswers[i],
        },
      );
    }

    return summaryOfResult;
  }

  @override
  Widget build(context) {
    final summaryData = getsummary();
    int correctAnswers = summaryData.where(
      (element) {
        return element['correctAnswer'] == element['selectedAnswer'];
      },
    ).length;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 40.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'You answered $correctAnswers out of ${userSelectedAnswers.length} questions correctly!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              child: SingleChildScrollView(
                child: Column(
                    children: getsummary()
                        .map((item) => ResultQuestion(questionSummary: item))
                        .toList()),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(iconColor: Colors.white),
              onPressed: restartQuiz,
              label: const Text(
                'Restart Quiz!',
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(Icons.restart_alt),
            )
          ],
        ),
      ),
    );
  }
}


///getter are almost same as function the only difference is we remove the
///parenthesis from function name and add 'get' keyword before the function 
///name.

///Arrow functions => can also be used instead of anonymous function if 
///our function immidiately returns from the function and contains only single 
///statement.

///Whenever any error occurs and you found it difficult to configure what is
///wrong then you should open debug console and reach top of function call
///stack, there you will found the error summary in detail and there you will
///also find the link to the line of code where that error is present.