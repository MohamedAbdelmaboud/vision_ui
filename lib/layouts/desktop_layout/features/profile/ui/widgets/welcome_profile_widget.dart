import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/app_styles.dart';
import 'turn_on_widget.dart';

class WelcomeProfileWidget extends StatelessWidget {
  const WelcomeProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back!',
          style: AppStyles.bold20(context),
        ),
        const Gap(5),
        Text(
          'Nice to see you, Abdelmaboud 🦈💙',
          style: AppStyles.regular12(context),
        ),
        const Spacer(),
        const TurnOnWidget()
      ],
    );
  }
}
