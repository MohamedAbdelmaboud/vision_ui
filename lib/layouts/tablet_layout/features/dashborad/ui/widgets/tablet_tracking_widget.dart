import '../../../../../desktop_layout/features/dashboard/ui/widgets/build_common_decoration.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/tracking_containers_list.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/tracking_indicator.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/tracking_widget_title.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TabletTrackingWidget extends StatelessWidget {
  const TabletTrackingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
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
    );
  }
}
