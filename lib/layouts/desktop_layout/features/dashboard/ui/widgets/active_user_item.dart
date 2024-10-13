import '../../data/models/active_user_model.dart';
import 'active_user_indicator.dart';
import 'active_user_item_icon.dart';
import 'active_user_item_title.dart';
import 'active_user_item_value.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ActiveUserItem extends StatelessWidget {
  const ActiveUserItem({
    super.key,
    required this.model,
  });
  final ActiveUserModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ActiveUserItemIcon(
              icon: model.icon,
            ),
            const Gap(8),
            ActiveUserItemTitle(
              title: model.title,
            ),
          ],
        ),
        const Gap(6),
        ActiveUserItemValue(
          value: model.value,
        ),
        const Gap(6),
        ActiveUserIndicator(
          percent: model.percentage,
        )
      ],
    );
  }
}
