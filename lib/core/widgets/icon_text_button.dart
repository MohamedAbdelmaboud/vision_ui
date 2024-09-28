import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
    required this.buttonColor,
    required this.padingHorizental,
    required this.padingVeritical,
    required this.icon,
    required this.iconColor,
    required this.buttonText,
    this.style,
    this.onPressed,
  });
  final Color buttonColor;
  final double padingHorizental;
  final double padingVeritical;
  final void Function()? onPressed;
  final IconData icon;
  final Color iconColor;
  final String buttonText;
  final TextStyle? style;
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
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: iconColor,
          ),
          const Gap(5),
          Text(buttonText, style: style),
        ],
      ),
    );
  }
}
