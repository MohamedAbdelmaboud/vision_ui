import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';

class TaxesItemTitle extends StatelessWidget {
  const TaxesItemTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'NEWSET',
      style: AppStyles.medium10(context).copyWith(
        color: context.theme.subTitleColor,
      ),
    );
  }
}
