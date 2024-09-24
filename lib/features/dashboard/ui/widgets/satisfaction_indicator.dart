import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'satisfaction_indicator_body.dart';

class SatisfactionIndicator extends StatelessWidget {
  const SatisfactionIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animation: true,
      circularStrokeCap: CircularStrokeCap.round,
      linearGradient: LinearGradient(
        colors: [
          //0075FF ,0075FF
          const Color(0xFF0075FF),
          const Color(0xFF0075FF).withOpacity(0.8),
        ],
        stops: const [0.0, 1.0],
      ),
      radius: 90.0,
      lineWidth: 9.0,
      percent: 0.55,
      startAngle: 270,
      backgroundColor: const Color(0xff22234B),
      center: const SatisfactionIndicatorBody(),
    );
  }
}
