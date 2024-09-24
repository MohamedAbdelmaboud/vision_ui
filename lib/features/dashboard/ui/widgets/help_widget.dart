import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import 'help_widget_button.dart';
import 'help_widget_icon.dart';
import 'help_widget_text.dart';

class HelpWidget extends StatelessWidget {
  const HelpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            Assets.assetsImagesHelpBackground,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HelpWidgetIcon(),
          Gap(20),
          HelpWidgetText(),
          //11.5
          Gap(11.5),
          HelpWidgetButton(),
        ],
      ),
    );
  }
}
