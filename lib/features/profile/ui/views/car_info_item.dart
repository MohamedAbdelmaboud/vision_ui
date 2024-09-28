import '../../../../core/utils/app_images.dart';
import '../../../dashboard/ui/widgets/today_dashboard_item_icon.dart';
import 'car_info_item_text.dart';
import 'package:flutter/material.dart';

class CarInfoItem extends StatelessWidget {
  const CarInfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: buildDecoration(),
      width: 220,
      child: const Row(
        children: [
          CarInfoItemText(),
          Spacer(),
          DashboardItemIcon(
            icon: Assets.assetsImagesCarHealth,
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
