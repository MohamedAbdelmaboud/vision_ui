import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class PlatformSwitchAndText extends StatelessWidget {
  const PlatformSwitchAndText({
    super.key,
    required this.text,
    required this.value,
    required this.onToggle,
  });
  final String text;
  final bool value;
  final void Function(bool) onToggle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlutterSwitch(
          height: 18,
          width: 35,
          padding: 3,
          toggleSize: 12,
          borderRadius: 10,
          activeColor: AppDarkColors.activeIconColor,
          inactiveColor: AppDarkColors.inactiveIconColor,
          value: value,
          onToggle: onToggle,
        ),
        const Gap(12),
        Text(
          text,
          style: AppStyles.regular12(context).copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ],
    );
  }
}
