import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class InvoicesTitle extends StatelessWidget {
  const InvoicesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Invoices',
          style: AppStyles.bold14,
        ),
        const Spacer(),
        Container(
          alignment: Alignment.center,
          height: 35,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(
                0xff0075FF,
              )),
          child: Text(
            'VIEW ALL',
            style: AppStyles.bold10,
          ),
        )
      ],
    );
  }
}
