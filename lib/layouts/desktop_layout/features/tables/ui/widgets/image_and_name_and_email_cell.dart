import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';

class ImageWithNameAndEmail extends StatelessWidget {
  const ImageWithNameAndEmail({
    super.key,
    required this.cellWidth,
    required this.imagePath,
    required this.name,
    required this.email,
  });

  final double cellWidth;
  final String imagePath;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cellWidth,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 15,
          ),
          const Gap(8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppStyles.medium12(context),
              ),
              Text(
                email,
                style: AppStyles.regular10(context).copyWith(
                  color: context.theme.subTitleColor.withOpacity(0.8),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
