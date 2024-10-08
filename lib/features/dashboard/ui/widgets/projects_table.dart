import 'package:flutter/material.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'company_item.dart';
import 'project_table_budget.dart';
import 'project_table_indicator_percent.dart';

class ProjectsTable extends StatelessWidget {
  const ProjectsTable({
    super.key,
  });
//TODO:I will solve this issue ♥
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 80,
      dataRowMaxHeight: 55,
      dividerThickness: 1,
      headingTextStyle: columnStyles(context),
      horizontalMargin: 0,
      columns: buildDataColumns(context),
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
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              // alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  Assets.assetsImagesAvatar3,
                ),
                Image.asset(
                  Assets.assetsImagesAvatar2,
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

  List<DataColumn> buildDataColumns(context) {
    return [
      DataColumn(
        label: Text(
          'COMPANY',
          style: columnStyles(context),
        ),
      ),
      DataColumn(
        label: Text(
          'MEMBERS',
          style: columnStyles(context),
        ),
      ),
      DataColumn(
        label: Text(
          'BUDGET',
          style: columnStyles(context),
        ),
      ),
      DataColumn(
        label: Text(
          'COMPLATION',
          style: columnStyles(context),
        ),
      ),
    ];
  }

  TextStyle columnStyles(BuildContext context) {
    return AppStyles.medium10(context).copyWith(
      color: context.theme.subTitleColor,
    );
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
