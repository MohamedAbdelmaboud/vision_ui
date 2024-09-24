import 'package:flutter/material.dart';

import '../../features/tables/ui/widgets/searchbox.dart';
import '../utils/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Pages  /  Tables",
          style: AppStyles.medium40,
        ),
        //Spacer(),
        const Searchbox()
      ],
    );
  }
}
