import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';

class TrackingWidgetIcon extends StatelessWidget {
  const TrackingWidgetIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: AppDarkColors.activeIconColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.more_horiz,
        color: Colors.white,
      ),
    );
  }
}
