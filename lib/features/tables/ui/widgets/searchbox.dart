import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class TableViewBody extends StatelessWidget {
  const TableViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}

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

class Searchbox extends StatelessWidget {
  const Searchbox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: TextField(
        style: AppStyles.medium14(context),
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
          hintText: "Type here...",
          hintStyle:
              AppStyles.medium14(context).copyWith(color: AppDarkColors.greyColor),
        ),
      ),
    );
  }
}
