import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../layouts/desktop_layout/features/dashboard/logic/cubit/dash_cubit.dart';
import '../extensions/context_colors_extension.dart';
import '../helper/is_tablet.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'app_right_section.dart';
import 'custom_switch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isTablet(context)
            ? IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.menu,
                  size: 30,
                  color: context.theme.subTitleColor,
                ),
                onPressed: onPressed,
              )
            : const SizedBox(),
        BlocBuilder<DashCubit, DashState>(
          builder: (context, state) {
            final cubit = DashCubit.get(context);
            return Text(
              cubit.title,
              style: AppStyles.medium24(context).copyWith(
                color: context.theme.subTitleColor,
              ),
            );
          },
        ),
        const Spacer(),
        const CustomSwitch(),
        const Gap(8),
        Image.asset(
          Assets.assetsImagesMoon,
          height: 25,
          color: context.theme.commonGradientColors[0],
        ),
        const Gap(25),
        const AppRightSection()
      ],
    );
  }
}
