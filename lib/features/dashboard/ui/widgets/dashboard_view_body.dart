import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'build_common_decoration.dart';
import 'today_items_list.dart';
import 'welcome_container.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Gap(12),
          const TodayItemsList(),
          const Gap(15),
          Row(
            children: [
              const WelcomeContainer(),
              const Gap(16),
              Container(
                padding: const EdgeInsets.all(27),
                height: 300,
                decoration: buildCommonDecoration(),
                child: Column(
                  children: [
                    Text(
                      'Satisfaction Rate',
                      style: AppStyles.bold16,
                    ),
                    const Gap(3.5),
                    Text(
                      'From all projects',
                      style: AppStyles.medium12.copyWith(
                        color: AppDarkColors.greyColor,
                      ),
                    ),
                    const Gap(11.5),
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        CircularPercentIndicator(
                          animation: true,
                          circularStrokeCap: CircularStrokeCap.round,
                          linearGradient: LinearGradient(
                            colors: [
                              //0075FF ,0075FF
                              const Color(0xFF0075FF),
                              const Color(0xFF0075FF).withOpacity(0.8),
                            ],
                            stops: const [0.0, 1.0],
                          ),
                          radius: 90.0,
                          lineWidth: 9.0,
                          percent: 0.55,
                          startAngle: 270,
                          backgroundColor: const Color(0xff22234B),
                          center: Container(
                            padding: const EdgeInsets.all(9),
                            height: 48,
                            width: 48,
                            decoration: const BoxDecoration(
                              color: AppDarkColors.activeIconColor,
                              shape: BoxShape.circle,
                            ),
                            child:
                                SvgPicture.asset(Assets.assetsImagesTagFaces),
                          ),
                        ),
                        Positioned(
                          bottom: -15,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            alignment: Alignment.center,
                            width: 200,
                            height: 70,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  //0A0E23 ,060B28
                                  const Color(0xFF0A0E23).withOpacity(0.5),
                                  const Color(0xFF060B28).withOpacity(0.4),
                                ],
                                stops: const [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '55%',
                                  style: AppStyles.bold20,
                                ),
                                const Gap(3.5),
                                Text(
                                  'Based on likes',
                                  style: AppStyles.regular12.copyWith(
                                    color: AppDarkColors.greyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
