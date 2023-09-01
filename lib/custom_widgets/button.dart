import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() startQuiz;
  const Button({required this.startQuiz, required this.text, super.key});

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: () {
        startQuiz();
      },
      //Icon() widget can be used anywhere, even outside the button widget.
      icon: const Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
      ),
      label: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}

//Mixin in dart is used to use methods and properties of a class without
//inheriting form it.

//'with' keyword is used to implement mixin.

//implements keyword is used to inherit from interface.

//If you want to add icon to button then you can call named widget or named
//constructor named 'Icon' as we used above with outlined button.

