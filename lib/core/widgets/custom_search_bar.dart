import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/dashboard/logic/cubit/dash_cubit.dart';
import '../utils/app_styles.dart';
import 'app_right_section.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<DashCubit, DashState>(
          builder: (context, state) {
            final cubit = DashCubit.get(context);
            return Text(
              cubit.title,
              style: AppStyles.medium24(context),
            );
          },
        ),
        const Spacer(),
        const AppRightSection()
      ],
    );
  }
}
