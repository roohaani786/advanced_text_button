import 'package:flutter/material.dart';

class AdvancedTextButton extends StatelessWidget{

  const AdvancedTextButton(
      {
        Key? key,
        this.buttonText,
        this.buttonTextColor,
        this.textStyle,
        this.backgroundColor,
        required this.onPressed,
      }
      ) : super(
      key: key
  );

  final Text? buttonText;
  final Color? buttonTextColor;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
            textStyle??const TextStyle(color: Colors.white)
        ),
        foregroundColor: MaterialStateProperty.all(buttonTextColor??Colors.white),
        backgroundColor: MaterialStateProperty.all(backgroundColor??Colors.blue),
      ),
      child: buttonText??const Text("Advanced Text Button"),
    );
  }

}