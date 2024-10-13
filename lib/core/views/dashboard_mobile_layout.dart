import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../layouts/desktop_layout/features/dashboard/logic/cubit/dash_cubit.dart';
import '../../layouts/desktop_layout/features/dashboard/logic/theme_cubit/theme_cubit.dart';
import '../utils/app_images.dart';
import '../widgets/custom_app_bar.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  isDarkMode(context)
                      ? Assets.assetsImagesDashboardBackground
                      : Assets.assetsImagesLightBackground,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      const SliverPadding(
                        padding: EdgeInsets.all(16.0),
                        sliver: SliverToBoxAdapter(
                          child: CustomAppBar(),
                        ),
                      ),
                      const SliverGap(16),
                      SliverToBoxAdapter(
                        child: BlocBuilder<DashCubit, DashState>(
                          builder: (context, state) {
                            final cubit = DashCubit.get(context);
                            return cubit.currentDesktopView();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
              ],
            ),
          );
        },
      ),
    );
  }
}
