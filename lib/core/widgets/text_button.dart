import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonColor,
    required this.padingHorizental,
    required this.padingVeritical,
    required this.buttonText,
    this.style,
    this.onPressed,
    required this.borderRadius,
  });
  final Color buttonColor;
  final double padingHorizental;
  final double padingVeritical;
  final void Function()? onPressed;
  final String buttonText;
  final TextStyle? style;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonColor),
        elevation: WidgetStateProperty.all(0),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: padingHorizental,
            vertical: padingVeritical,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: style),
    );
  }
}
