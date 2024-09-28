import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CarInfoItemText extends StatelessWidget {
  const CarInfoItemText({
    super.key,
    required this.title,
    required this.value,
  
  });
final String title;
final String value;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Battery Health',
          style: AppStyles.medium12.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
        const Gap(5),
        Text(
          '76%',
          style: AppStyles.bold20,
        ),
      ],
    );
  }
}
