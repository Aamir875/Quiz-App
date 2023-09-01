import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';

class ResultQuestion extends StatelessWidget {
  const ResultQuestion({super.key, required this.questionSummary});

  final Map<String, Object> questionSummary;

  bool iscorrect() {
    return questionSummary['correctAnswer'] ==
        questionSummary['selectedAnswer'];
  }

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.07,
            width: MediaQuery.of(context).size.width * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: iscorrect()
                    ? Colors.cyan
                    : const Color.fromARGB(255, 184, 101, 198)),
            child: Center(
              child: Text(
                ((questionSummary['questionNumber'] as int) + 1).toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  QuestionData()
                      .questionAndAnswers[
                          questionSummary['questionNumber'] as int]
                      .question,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                Text(
                  questionSummary['selectedAnswer'].toString(),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 205, 131, 218)),
                ),
                Text(
                  QuestionData()
                      .questionAndAnswers[
                          questionSummary['questionNumber'] as int]
                      .options[0],
                  style: const TextStyle(color: Colors.cyan),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
