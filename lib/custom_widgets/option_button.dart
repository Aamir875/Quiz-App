import 'package:flutter/material.dart';

class OptionButton extends StatefulWidget {
  final String optionText;
  final void Function(String) onTap;
  const OptionButton({
    required this.onTap,
    required this.optionText,
    super.key,
  });

  @override
  State<OptionButton> createState() {
    return _OptionButtonState();
  }
}

class _OptionButtonState extends State<OptionButton> {
  //context gives location about this widget in widget tree.
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: () {
        widget.onTap(widget.optionText);
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 31, 2, 125),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      // style: const ButtonStyle(
      //   minimumSize: MaterialStatePropertyAll(Size(300, 30)),
      //   backgroundColor: MaterialStatePropertyAll(
      //     Color.fromARGB(255, 31, 2, 125),
      //   ),
      // ),
      child: Text(
        widget.optionText,
        textAlign: TextAlign.center,
      ),
    );
  }
}

//double.infinity is used to take all the available width.

//crossAxisAlignment
//padding in container