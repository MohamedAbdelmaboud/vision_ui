import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'build_common_decoration.dart';
import 'tracking_containers_list.dart';
import 'tracking_indicator.dart';
import 'tracking_widget_title.dart';

class TrackingWidget extends StatelessWidget {
  const TrackingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 27),
        decoration: buildCommonDecoration(context),
        child: const Column(
          children: [
            TrackingWidgetTitle(),
            Gap(35),
            IntrinsicHeight(
              child: Row(
                children: [
                  TrackingContainersList(),
                  Spacer(),
                  TrackingIndicator()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
