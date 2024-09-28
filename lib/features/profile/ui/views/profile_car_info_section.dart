import '../../../../core/themes/app_dark_colors.dart';
import 'car_info_indicator.dart';
import 'car_info_items_list.dart';
import 'car_info_title.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'profile_view.dart';

class ProfileCarInfoSection extends StatelessWidget {
  const ProfileCarInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: buildCarInfoDecoration(),
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

  BoxDecoration buildCarInfoDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppDarkColors.gradiantTableColor1.withOpacity(0.7),
          AppDarkColors.gradiantTableColor1.withOpacity(0.7),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
