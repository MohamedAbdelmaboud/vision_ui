import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'build_common_decoration.dart';
import 'satisfaction_indicator.dart';
import 'satisfaction_percentage.dart';
import 'satisfaction_widget_text.dart';

class SatisfactionWidget extends StatelessWidget {
  const SatisfactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        padding: const EdgeInsets.all(27),
        decoration: buildCommonDecoration(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SatisfactionWidgetText(),
            Gap(11.5),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                SatisfactionIndicator(),
                SatisfactionPercentage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
