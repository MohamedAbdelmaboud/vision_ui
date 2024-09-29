import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';
import 'billing_delete_button.dart';
import 'billing_edit_button.dart';

class BillingCardTitleAndDeleteAndEdit extends StatelessWidget {
  const BillingCardTitleAndDeleteAndEdit({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.medium12(context),
        
        ),
        const Spacer(),
        const BillingDeleteButton(),
        const BillingEditButton(),
        const Gap(5)
      ],
    );
  }
}
