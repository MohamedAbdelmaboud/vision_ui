import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'build_data_row.dart';
import 'custom_table.dart';

class AutherTable extends StatelessWidget {
  const AutherTable({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width * 0.69;
    return CustomTable(
      labelColum1: "AUTHOR",
      labelColum2: "FUNCTION",
      labelColum3: "STATUS",
      labelColum4: "EMPLOYED",
      style: AppStyles.regular10.copyWith(
        color: AppDarkColors.greyColor.withOpacity(0.8),
      ),
      title: "Authors Table ",
      rows: [
        BuildDataRow().buildDataRow(
          screenWidth,
          Assets.assetsImagesAvatar1,
          'Esthera Jackson',
          "esthera@simmmple.com",
          'Manager',
          'Organization',
          'Online',
          '14/06/21',
        ),
        BuildDataRow().buildDataRow(
          screenWidth,
          Assets.assetsImagesAvatar2,
          'Alexa Liras',
          "alexa@simmmple.com",
          'Programmer',
          'Developer',
          'Offline',
          '14/06/21',
        ),
        BuildDataRow().buildDataRow(
          screenWidth,
          Assets.assetsImagesAvatar3,
          'Laurent Michael',
          "laurent@simmmple.com",
          'Executive',
          'Projects',
          'Online',
          '14/06/21',
        ),
        BuildDataRow().buildDataRow(
          screenWidth,
          Assets.assetsImagesAvatar4,
          'Freduardo Hill',
          "freduardo@simmmple.com",
          'Manager',
          'Organization',
          'Online',
          '14/06/21',
        ),
        BuildDataRow().buildDataRow(
          screenWidth,
          Assets.assetsImagesAvatar5,
          'Daniel Thomas',
          "daniel@simmmple.com",
          'Programmer',
          'Developer',
          'Offline',
          '14/06/21',
        ),
        BuildDataRow().buildDataRow(
          screenWidth,
          Assets.assetsImagesAvatar6,
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
