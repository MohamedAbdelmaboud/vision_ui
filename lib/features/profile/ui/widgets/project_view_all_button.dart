import 'package:flutter/material.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class ProjectViewAllButton extends StatelessWidget {
  const ProjectViewAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: context.theme.subTitleColor,
            elevation: 0,
            side: BorderSide(
              color: context.theme.subTitleColor,
              width: 2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            "VIEW ALL",
            style: AppStyles.medium10(context).copyWith(
              color: context.theme.subTitleColor,
            ),
          ),
        ),
        const Spacer(),
        Row(
          // alignment: Alignment.centerLeft,
          children: [
            Image.asset(
              Assets.assetsImagesAvatar1,
            ),
            Image.asset(
              Assets.assetsImagesAvatar2,
            ),
            Image.asset(
              Assets.assetsImagesAvatar3,
            ),
          ],
        ),
      ],
    );
  }
}
