import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class Searchbox extends StatelessWidget {
  const Searchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextField(
        style: AppStyles.medium14,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppDarkColors.searchBoxColor,
          prefixIcon: const Icon(
            Icons.search,
            color: AppDarkColors.searchIconColor,
            size: 18,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: AppDarkColors.searchIconColor, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: AppDarkColors.searchIconColor, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          hintText: "typing text ",
          hintStyle:
              AppStyles.medium14.copyWith(color: AppDarkColors.greyColor),
        ),
      ),
    );
  }
}
