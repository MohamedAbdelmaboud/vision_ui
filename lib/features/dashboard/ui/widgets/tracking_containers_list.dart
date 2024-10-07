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
          context: context,
        ),
        const Gap(20),
        buildTrackingContainer(
          title: 'Bonus',
          value: '172,003',
          context: context,
        ),
      ],
    );
  }

  Widget buildTrackingContainer({
    required String title,
    required String value,
    required BuildContext context,
  }) {
    return DashCustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.medium14(context),

          ),
          const Gap(5),
          Text(
            value,
            style: AppStyles.bold16(context),
          ),
        ],
      ),
    ).asGlass(
      tintColor: AppDarkColors.activeIconColor,
      clipBorderRadius: BorderRadius.circular(20),
      blurY: 50,
      blurX: 50,
      tileMode: TileMode.mirror,
    );
  }
}
