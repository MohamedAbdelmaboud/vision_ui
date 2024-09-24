import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/dash_cubit.dart';
import 'drawer_item.dart';

class DrawerListItems extends StatelessWidget {
  const DrawerListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashCubit, DashState>(
      builder: (context, state) {
        final cubit = DashCubit.get(context);

        final items = cubit.items;
        int currentIndex = cubit.currentIndex;
        return Column(
            children: items.asMap().entries.map(
          (entry) {
            final index = entry.key;
            final item = entry.value;
            return InkWell(
              onTap: () {
                cubit.changeIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: DrawerItem(
                  model: item,
                  isActivated: currentIndex == index,
                ),
              ),
            );
          },
        ).toList());
      },
    );
  }
}
