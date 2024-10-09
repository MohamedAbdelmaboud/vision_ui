import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import 'car_info_indicator.dart';
import 'car_info_items_list.dart';
import 'car_info_title.dart';

class ProfileCarInfoSection extends StatelessWidget {
  const ProfileCarInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        padding: const EdgeInsets.all(24),
        decoration: buildCarInfoDecoration(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarInfoTitle(),
            Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CarInfoIndicator(),
                  Gap(30),
                  CarInfoItemsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildCarInfoDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: context.theme.gradientTableColors,
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
