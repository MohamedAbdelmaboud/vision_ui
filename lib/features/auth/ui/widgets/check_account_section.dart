import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/text_button.dart';

class CheckAccountSection extends StatelessWidget {
  const CheckAccountSection({
    super.key,
    required this.text,
    required this.textButton,
    this.onPressed,
  });
  final String text;
  final String textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.medium10(context)
              .copyWith(color: AppDarkColors.greyColor),
        ),
        CustomTextButton(
          borderRadius: 0,
          buttonColor: Colors.transparent,
          buttonText: textButton,
          padingHorizental: 5,
          padingVeritical: 5,
          onPressed: onPressed,
          style: AppStyles.medium10(context),
        )
      ],
    );
  }
}
