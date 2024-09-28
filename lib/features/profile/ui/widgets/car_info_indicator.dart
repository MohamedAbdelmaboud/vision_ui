import '../../../../core/utils/app_images.dart';
import 'car_info_circle_container.dart';
import 'package:flutter/material.dart';

class CarInfoIndicator extends StatelessWidget {
  const CarInfoIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const CarInfoCircleContainer(),
        Image.asset(
          Assets.assetsImagesIndicator,
          height: 150,
        ),
      ],
    );
  }
}
