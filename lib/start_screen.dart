import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/button.dart';
import 'package:quiz_app/custom_widgets/custom_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  // ignore: prefer_typing_uninitialized_variables
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 350,
            height: 350,
            color: const Color.fromARGB(
              150,
              255,
              255,
              255,
            ),
          ),

          //Opacity is not recommended to change the transparency of any
          //widget with color property. Instead color property is recommended
          //to change the transparency of object.
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 350,
          //     height: 350,
          //   ),
          // ),
          const SizedBox(
            height: 70,
          ),
          const CustomText(),
          const SizedBox(
            height: 30,
          ),
          Button(
            text: 'Start Quiz',
            startQuiz: startQuiz,
          )
        ],
      ),
    );
  }
}


//SinlgeChildScrollView class is used to provide scroll view.

//Scaffold widget is everything which we use on screen like appBar,
//floating button, and navigation bar.

//MaterialApp just give us a area to plot the UI elements using widgets like
//scaffold, cupertino.

//resizeToAvoidBottomInset property:- 
//If true the body and the scaffold's floating widgets should size themselves 
//to avoid the onscreen keyboard whose height is defined by the ambient 
//MediaQuery's MediaQueryData.viewInsets bottom property.
//For example, if there is an onscreen keyboard displayed above the scaffold,
// the body can be resized to avoid overlapping the keyboard, which prevents
// widgets inside the body from being obscured by the keyboard.

//'mainAxisSize' is used to minimize or maximize the size occupied by the row
//or column.