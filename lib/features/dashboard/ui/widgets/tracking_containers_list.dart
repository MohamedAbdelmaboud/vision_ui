import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'dash_custom_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:glass/glass.dart';

class TrackingContainersList extends StatelessWidget {
  const TrackingContainersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTrackingContainer(
          title: 'Invited',
          value: '279 people',
        ),
        const Spacer(),
        buildTrackingContainer(
          title: 'Bonus',
          value: '172,003',
        ),
      ],
    );
  }

  Widget buildTrackingContainer({
    required String title,
    required String value,
  }) {
    return DashCustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.medium14,
          ),
          const Gap(5),
          Text(
            value,
            style: AppStyles.bold16,
          ),
        ],
      ),
    ).asGlass(
      tintColor: AppDarkColors.activeIconColor,
      clipBorderRadius: BorderRadius.circular(20),
      tileMode: TileMode.mirror,
    );
  }
}
