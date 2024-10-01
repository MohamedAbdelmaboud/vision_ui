import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'searchbox.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Pages  /  Tables",
          style: AppStyles.medium24(context),
        ),
        //Spacer(),
        const Searchbox()
      ],
    );
  }
}
