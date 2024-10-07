import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TaxesItemTitle extends StatelessWidget {
  const TaxesItemTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'NEWSET',
      style: AppStyles.medium10(context).copyWith(
        color: AppDarkColors.greyColor,
      ),
    );
  }
}
