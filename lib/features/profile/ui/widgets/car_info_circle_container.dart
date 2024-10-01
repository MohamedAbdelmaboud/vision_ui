import 'car_info_circle_container_body.dart';
import 'package:flutter/material.dart';

class CarInfoCircleContainer extends StatelessWidget {
  const CarInfoCircleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xff060B28),
            const Color(0xff060B28).withOpacity(0.5),
            const Color(0xff060B28).withOpacity(0.2),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        shape: BoxShape.circle,
      ),
      child: const CarInfoCircleContainerBody(),
    );
  }
}
