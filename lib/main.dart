import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Quiz(),
      ),
    ),
  );
}

//'const' is used to reuse the widgets in memory.

