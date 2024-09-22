import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:vision_ui/core/utils/app_images.dart';
import 'package:vision_ui/core/utils/app_styles.dart';
import 'package:vision_ui/features/dashboard/ui/widgets/dashboard_items_list.dart';

class DashboradView extends StatelessWidget {
  const DashboradView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 264,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  const Color(0xFF060B26),
                  const Color(0xFF0E1E50).withOpacity(0.99),
                ],
                stops: const [0.8, 0.95], // TODO: Check this or remove
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(38),
                  Text(
                    'VISION UI',
                    style: AppStyles.medium14,
                  ),
                  const Gap(28),
                  SvgPicture.asset(Assets.assetsImagesVector),
                  const Gap(22),
                  const DashboardItemsList()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
