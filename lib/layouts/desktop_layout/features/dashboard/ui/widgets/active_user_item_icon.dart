import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/themes/app_dark_colors.dart';

class ActiveUserItemIcon extends StatelessWidget {
  const ActiveUserItemIcon({super.key, required this.icon});
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppDarkColors.activeIconColor,
      ),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}
