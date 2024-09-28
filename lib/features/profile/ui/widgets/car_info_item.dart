import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: buildDecoration(),
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

  BoxDecoration buildDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          const Color(0xff060B28),
          const Color(0xff060B28).withOpacity(0.5),
          const Color(0xff060B28).withOpacity(0.2),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(20),
    );
  }
}
