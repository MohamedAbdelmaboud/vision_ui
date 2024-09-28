import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import 'user_details_edit_button.dart';

class UserDetailsImage extends StatelessWidget {
  const UserDetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Image(
            height: 65,
            width: 65,
            image: AssetImage(Assets.assetsImagesUserProfile),
          ),
        ),
        const Positioned(
          bottom: -8,
          right: -8,
          child: UserDetailsEditButton(),
        ),
      ],
    );
  }
}
