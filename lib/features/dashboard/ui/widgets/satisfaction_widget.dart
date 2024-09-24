import 'build_common_decoration.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
    
      child: Container(
        padding: const EdgeInsets.all(27),
        height: 300,
        // width: 320,
        decoration: buildCommonDecoration(),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SatisfactionWidgetText(),
            Gap(11.5),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  SatisfactionIndicator(),
                  SatisfactionPercentage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
