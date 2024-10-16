import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, required this.hint});
  final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.medium12(context).copyWith(
            color: AppDarkColors.whiteColor,
          ),
        ),
        const Gap(8),
        TextField(
          style: TextStyle(
            color: context.theme.hintColor,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppStyles.regular10(context).copyWith(
              color: context.theme.hintColor.withOpacity(0.8),
            ),
            filled: true,
            fillColor: context.theme.subTitleColor,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: AppDarkColors.whiteColor.withOpacity(0.5),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: AppDarkColors.activeIconColor.withOpacity(0.5),
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
