import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SatisfactionIndicatorBody extends StatelessWidget {
  const SatisfactionIndicatorBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      height: 48,
      width: 48,
      decoration: const BoxDecoration(
        color: AppDarkColors.activeIconColor,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(Assets.assetsImagesTagFaces),
    );
  }
}
