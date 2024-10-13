import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'build_author_row.dart';
import 'custom_author_table.dart';

class AutherTable extends StatelessWidget {
  const AutherTable({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return CustomAuthorTable(
      labelColum1: "AUTHOR",
      labelColum2: "FUNCTION",
      labelColum3: "STATUS",
      labelColum4: "EMPLOYED",
      style: AppStyles.regular10(context).copyWith(
        color: context.theme.subTitleColor.withOpacity(0.8),
      ),
      title: "Authors Table ",
      rows: [
        BuildAuthorRow().buildAuthorRow(
          screenWidth,
          Assets.assetsImagesAvatarTable1,
          'Esthera Jackson',
          "esthera@simmmple.com",
          'Manager',
          'Organization',
          'Online',
          '14/06/21',
        ),
        BuildAuthorRow().buildAuthorRow(
          screenWidth,
          Assets.assetsImagesAvatarTable2,
          'Alexa Liras',
          "alexa@simmmple.com",
          'Programmer',
          'Developer',
          'Offline',
          '14/06/21',
        ),
        BuildAuthorRow().buildAuthorRow(
          screenWidth,
          Assets.assetsImagesAvatarTable3,
          'Laurent Michael',
          "laurent@simmmple.com",
          'Executive',
          'Projects',
          'Online',
          '14/06/21',
        ),
        BuildAuthorRow().buildAuthorRow(
          screenWidth,
          Assets.assetsImagesAvatarTable4,
          'Freduardo Hill',
          "freduardo@simmmple.com",
          'Manager',
          'Organization',
          'Online',
          '14/06/21',
        ),
        BuildAuthorRow().buildAuthorRow(
          screenWidth,
          Assets.assetsImagesAvatarTable5,
          'Daniel Thomas',
          "daniel@simmmple.com",
          'Programmer',
          'Developer',
          'Offline',
          '14/06/21',
        ),
        BuildAuthorRow().buildAuthorRow(
          screenWidth,
          Assets.assetsImagesAvatarTable6,
          'Mark Wilson',
          "mark@simmmple.com",
          'Designer',
          'UI/UX Design',
          'Offline',
          '14/06/21',
        ),
      ],
    );
  }
}
