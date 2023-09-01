import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Learn Flutter the fun way!',
      style: TextStyle(
        //Don't use height in to give font height because text
        //height is the space aquired by the text. Use fontSize
        //instead to change the height of the text.
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }
}
