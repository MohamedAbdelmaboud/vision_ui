import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import 'tracking_widget_icon.dart';

class TrackingWidgetTitle extends StatelessWidget {
  const TrackingWidgetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Referral Tracking',
          style: AppStyles.bold14,
        ),
      
        const TrackingWidgetIcon(),
      ],
    );
  }
}
