import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../data/models/over_view_item_model.dart';

class OrderOverViewItem extends StatelessWidget {
  const OrderOverViewItem({
    super.key,
    required this.model,
  });
  final OverViewItemModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          model.icon,
        ),
        const Gap(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.title,
              style: AppStyles.medium12(context),
            ),
            const Gap(5),
            Text(
              model.date,
              style: AppStyles.bold12(context).copyWith(
                color: context.theme.subTitleColor.withOpacity(0.6),
              ),
            ),
          ],
        )
      ],
    );
  }
}
