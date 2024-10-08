import 'package:flutter/material.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_styles.dart';

class ActiveUserItemTitle extends StatelessWidget {
  const ActiveUserItemTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.medium12(context).copyWith(
        color: context.theme.subTitleColor,
      ),
    );
  }
}
