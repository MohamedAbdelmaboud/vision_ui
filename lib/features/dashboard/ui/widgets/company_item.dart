import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_styles.dart';

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
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 150,
          ),
          child: Text(
            text,
            style: AppStyles.bold12,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
