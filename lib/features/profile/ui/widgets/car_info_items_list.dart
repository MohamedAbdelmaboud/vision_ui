import '../../../../core/utils/app_images.dart';
import 'car_info_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CarInfoItemsList extends StatelessWidget {
  const CarInfoItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            CarInfoItem(
              title: 'Battery Health',
              value: '76%',
              iconPath: Assets.assetsImagesCarHealth,
            ),
            Gap(10),
            CarInfoItem(
              title: 'Consumption',
              value: '163Wh/km',
              iconPath: Assets.assetsImagesPowerWhite,
            ),
          ],
        ),
        Gap(10),
        Column(
          children: [
            CarInfoItem(
              title: 'Efficiency',
              isChart: true,
              value: '90%',
              iconPath: Assets.assetsImagesLineChartGreen,
            ),
            Gap(20),
            CarInfoItem(
              title: 'This week',
              value: '1324 km',
              isChart: true,
              iconPath: Assets.assetsImagesLineChartBlue,
            ),
          ],
        ),
      ],
    );
  }
}
