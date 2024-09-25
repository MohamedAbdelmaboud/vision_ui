import '../../../../core/themes/app_dark_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ActiveUserIndicator extends StatelessWidget {
  const ActiveUserIndicator({
    super.key,
    required this.percent,
  });
  final double percent;
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: EdgeInsets.zero,
      width: 100,
      barRadius: const Radius.circular(5),
      percent: percent,
      // progressColor: AppDarkColors.activeIconColor,
      animation: true,
      curve: Curves.bounceInOut,
      backgroundColor: Colors.white10,
      linearGradient: const LinearGradient(
          colors: [AppDarkColors.activeIconColor, AppDarkColors.greenColor]),

      // fillColor: Colors.white10,
    );
  }
}
