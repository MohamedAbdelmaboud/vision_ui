import 'package:flutter/material.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_styles.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
    required this.cellWidth,
  });

  final double cellWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cellWidth,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Edit',
          style: AppStyles.medium12(context).copyWith(
            color: context.theme.subTitleColor.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
