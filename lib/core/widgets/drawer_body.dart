import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../features/dashboard/ui/widgets/drawer_list_items.dart';
import '../../features/dashboard/ui/widgets/help_widget.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Gap(38),
          Text(
            'VISION UI FREE',
            style: AppStyles.medium14(context),
          
          ),
          const Gap(28),
          SvgPicture.asset(Assets.assetsImagesVector),
          const Gap(22),
          const DrawerListItems(),
          const Spacer(),
          const HelpWidget(),
          const Gap(23.5)
        ],
      ),
    );
  }
}
