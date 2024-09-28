import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text = 'VIEW ALL',
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(
            0xff0075FF,
          )),
      child: Text(
        text,
        style: AppStyles.bold10,
      ),
    );
  }
}
