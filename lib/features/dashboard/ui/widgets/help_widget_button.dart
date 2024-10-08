import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HelpWidgetButton extends StatelessWidget {
  const HelpWidgetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 38,
        vertical: 12.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF060B28).withOpacity(0.74),
            const Color(0xFF0A0E23).withOpacity(0.72),
          ],
        ),
      ),
      child: Text(
        'DOCUMENTATION',
        style: AppStyles.bold10(context),
      ),
    );
  }
}
