import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:glass/glass.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.cardIcon,
    required this.cardNumber,
  });
  final String cardIcon;
  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 26),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              cardIcon,
            ),
            const Gap(8),
            Text(
              cardNumber,
              style: AppStyles.regular12(context).copyWith(
                color: context.theme.subTitleColor,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.edit,
              color: context.theme.subTitleColor,
              size: 12,
            ),
          ],
        ),
      ).asGlass(
        clipBorderRadius: BorderRadius.circular(15),
        tintColor: context.theme.subTitleColor.withOpacity(0.2),
      ),
    );
  }
}
