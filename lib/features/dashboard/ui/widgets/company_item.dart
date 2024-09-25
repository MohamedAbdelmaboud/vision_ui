import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompanyItem extends StatelessWidget {
  const CompanyItem({
    super.key,
    required this.imagePath,
    required this.text,
  });

  final String imagePath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          imagePath,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: AppStyles.bold12,
        ),
      ],
    );
  }
}
