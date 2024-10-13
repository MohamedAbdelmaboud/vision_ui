import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class InvoicesItem extends StatelessWidget {
  const InvoicesItem({
    super.key,
    required this.code,
    required this.date,
    required this.price,
  });
  final String code;
  final String date;

  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          InvoicesItemText(
            date: date,
            code: code,
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: AppStyles.regular12(context).copyWith(
              color: context.theme.subTitleColor,
            ),
          ),
          const Gap(10),
          SvgPicture.asset(
            Assets.assetsImagesPdf,
            colorFilter: ColorFilter.mode(
              context.theme.subTitleColor,
              BlendMode.srcIn,
            ),
          ),
          const Gap(10),
          Text(
            'PDF',
            style: AppStyles.regular12(context).copyWith(
              color: context.theme.subTitleColor,
            ),
          )
        ],
      ),
    );
  }
}

class InvoicesItemText extends StatelessWidget {
  const InvoicesItemText({
    super.key,
    required this.date,
    required this.code,
  });

  final String date;
  final String code;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(date, style: AppStyles.medium14(context)),
        const Gap(5),
        Text(
          code,
          style: AppStyles.regular12(context).copyWith(
            color: context.theme.subTitleColor,
          ),
        )
      ],
    );
  }
}
