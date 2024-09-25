import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';
import 'delete_button.dart';
import 'edit_button.dart';

class CardTitleAndDeleteAndEdit extends StatelessWidget {
  const CardTitleAndDeleteAndEdit({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.medium12,
        ),
        const Spacer(),
        const DeleteButton(),
        const EditButton(),
        const Gap(5)
      ],
    );
  }
}
