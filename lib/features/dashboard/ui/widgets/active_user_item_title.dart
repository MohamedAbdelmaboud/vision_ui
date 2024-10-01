import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class ActiveUserItemTitle extends StatelessWidget {
  const ActiveUserItemTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.medium12(context).copyWith(
        color: AppDarkColors.greyColor,
      ),
    );
  }
}
