import '../../../../../../core/themes/app_dark_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProjectTableIndicator extends StatelessWidget {
  const ProjectTableIndicator({
    super.key,
    this.percent = 0.4,
  });
  final double percent;
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      padding: EdgeInsets.zero,
      width: 125,
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
