import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../dashboard/ui/widgets/today_dashboard_item_icon.dart';
import 'car_info_item_text.dart';

class CarInfoItem extends StatelessWidget {
  const CarInfoItem({
    super.key,
    required this.title,
    required this.value,
    required this.iconPath,
    this.isChart = false,
  });
  final String title;
  final String value;
  final String iconPath;
  final bool isChart;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: buildDecoration(
        context,
      ),
      width: 220,
      child: Row(
        children: [
          CarInfoItemText(
            title: title,
            value: value,
          ),
          const Spacer(),
          !isChart
              ? DashboardItemIcon(
                  icon: iconPath,
                )
              : SvgPicture.asset(
                  iconPath,
                )
        ],
      ),
    );
  }

  BoxDecoration buildDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: context.theme.gradientTableColors,
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }
}
