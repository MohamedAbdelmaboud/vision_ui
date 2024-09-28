import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:glass/glass.dart';

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
              style: AppStyles.regular12.copyWith(
                color: AppDarkColors.greyColor,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.edit,
              color: AppDarkColors.greyColor,
              size: 12,
            ),
          ],
        ),
      ).asGlass(
        clipBorderRadius: BorderRadius.circular(15),
        tintColor: AppDarkColors.greyColor.withOpacity(0.2),
      ),
    );
  }
}
