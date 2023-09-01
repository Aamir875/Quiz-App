import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/option_button.dart';
import 'package:quiz_app/models/question_and_option.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSetup extends StatelessWidget {
  final QuestionAndOption question;
  final void Function(String) onTap;

  const QuestionSetup(this.onTap, this.question, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                question.question,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 23,
                  color: const Color.fromARGB(
                    255,
                    209,
                    197,
                    235,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...question.getShuffledAnswers().map(
                  (item) {
                    return OptionButton(onTap: onTap, optionText: item);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

///'...' is used to take out the items from a list or iterable<> out of the
///collection and make them individual elements.

///Shuffle() function is used to shuffle the contents of list but ir changes
///the values of original list.

///To use third party google fonts in your project we have to add the package
///via terminal using command pub add and after that we can use them in our project by
///importing the package in file.