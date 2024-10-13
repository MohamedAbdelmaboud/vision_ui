import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BillingCardSubTitleText extends StatelessWidget {
  const BillingCardSubTitleText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.regular10(context).copyWith(
        color: context.theme.subTitleColor.withOpacity(0.8),
      ),
    );
  }
}
