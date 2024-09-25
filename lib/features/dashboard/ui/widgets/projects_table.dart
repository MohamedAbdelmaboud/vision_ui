import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'company_item.dart';
import 'project_table_budget.dart';
import 'project_table_indicator_percent.dart';

class ProjectsTable extends StatelessWidget {
  const ProjectsTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 80, //TODO:I will solve this issue ♥

      dataRowMaxHeight: 55,
      dividerThickness: 1,
      headingTextStyle: AppStyles.medium10.copyWith(
        color: AppDarkColors.greyColor,
      ),
      horizontalMargin: 0,
      columns: buildDataColumns(),
      rows: buildDataRows(),
    );
  }

  DataRow _buildDataRow({
    required String companyImagePath,
    required String companyName,
    required String budget,
    required double percent,
    required String percentText,
  }) {
    return DataRow(
      cells: [
        DataCell(
          CompanyItem(
            imagePath: companyImagePath,
            text: companyName,
          ),
        ),
        DataCell(
          Row(
            // alignment: Alignment.centerLeft,
            children: [
              Image.asset(
                Assets.assetsImagesAvatar1,
              ),
              Image.asset(
                Assets.assetsImagesAvatar1,
              ),
              Image.asset(
                Assets.assetsImagesAvatar2,
              ),
              Image.asset(
                Assets.assetsImagesAvatar3,
              ),
            ],
          ),
        ),
        DataCell(
          ProjectTableBudget(
            budget: budget,
          ),
        ),
        DataCell(
          ProjectTableIndicatorPercent(
            percent: percent,
            percentText: percentText,
          ),
        ),
      ],
    );
  }

  List<DataColumn> buildDataColumns() {
    return [
      DataColumn(
        label: Text(
          'COMPANY',
          style: AppStyles.medium10.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ),
      DataColumn(
        label: Text(
          'MEMBERS',
          style: AppStyles.medium10.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ),
      DataColumn(
        label: Text(
          'BUDGET',
          style: AppStyles.medium10.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ),
      DataColumn(
        label: Text(
          'COMPLATION',
          style: AppStyles.medium10.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ),
    ];
  }

  List<DataRow> buildDataRows() {
    return [
      _buildDataRow(
        companyImagePath: Assets.assetsImagesXd,
        companyName: 'Chakra Soft UI Version',
        budget: '\$14,000',
        percent: 0.60,
        percentText: '60%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesProgressTrack,
        companyName: 'Add Progress Track',
        budget: '\$3,000',
        percent: 0.10,
        percentText: '10%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesError,
        companyName: 'Fix Platform Errors',
        budget: 'Not set',
        percent: 1.00,
        percentText: '100%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesSpotifiy,
        companyName: 'Launch our Mobile App',
        budget: '\$32,000',
        percent: 1.00,
        percentText: '100%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesPricing,
        companyName: 'Add the New Pricing Page',
        budget: '\$400',
        percent: 0.25,
        percentText: '25%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesShop,
        companyName: 'Redesign New Online Shop',
        budget: '\$7,600',
        percent: 0.40,
        percentText: '40%',
      ),
    ];
  }
}
