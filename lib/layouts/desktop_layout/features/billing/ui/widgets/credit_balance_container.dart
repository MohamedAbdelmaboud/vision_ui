import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../dashboard/logic/theme_cubit/theme_cubit.dart';

class CreditBalanceContainer extends StatelessWidget {
  const CreditBalanceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          height: 103,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              colorFilter: !isDarkMode(context)
                  ? ColorFilter.mode(
                      Colors.white.withOpacity(0.9),
                      BlendMode.softLight,
                    )
                  : null,
              image: const AssetImage(
                Assets.assetsImagesTaxesBg,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Credit Balance',
                    style: AppStyles.medium12(context),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              const Gap(10),
              Row(
                children: [
                  Text(
                    '\$17,203',
                    style: AppStyles.medium12(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    Assets.assetsImagesGraph,
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
