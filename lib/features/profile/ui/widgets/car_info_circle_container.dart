import 'package:flutter/material.dart';

import 'car_info_circle_container_body.dart';

class CarInfoCircleContainer extends StatelessWidget {
  const CarInfoCircleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: buildCarInfoCircleContainerDecoration(),
      child: const CarInfoCircleContainerBody(),
    );
  }

  BoxDecoration buildCarInfoCircleContainerDecoration() {
    return const BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        colors: [
          Color(0xff5190F2),
          Color(0xff1763D2),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      //borderRadius: BorderRadius.circular(20),
    );
  }
}
