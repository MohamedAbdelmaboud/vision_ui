import 'package:flutter/material.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../dashboard/ui/widgets/company_item.dart';
import '../../../dashboard/ui/widgets/project_table_budget.dart';
import '../../../dashboard/ui/widgets/project_table_indicator_percent.dart';
import 'project_table_status.dart';

class CompaniesTable extends StatelessWidget {
  const CompaniesTable({
    super.key,
  });
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
    required String status,
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
          ProjectTableBudget(
            budget: budget,
          ),
        ),
        DataCell(
          ProjectTableStatus(
            status: status,
          ),
        ),
        DataCell(
          ProjectTableIndicatorPercent(
            percent: percent,
            percentText: percentText,
          ),
        ),
        const DataCell(
          Icon(
            Icons.more_vert,
            color: Colors.white,
            weight: 0.5,
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
          'BUDGET',
          style: columnStyles(context),
        ),
      ),
      DataColumn(
        label: Text(
          'STATUS',
          style: columnStyles(context),
        ),
      ),
      DataColumn(
        label: Text(
          'COMPLATION',
          style: columnStyles(context),
        ),
      ),
      DataColumn(
        label: Text(
          '',
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
        status: 'In Progress',
        percent: 0.60,
        percentText: '60%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesProgressTrack,
        companyName: 'Add Progress Track',
        budget: '\$3,000',
        status: 'Canceled',
        percent: 0.10,
        percentText: '10%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesError,
        companyName: 'Fix Platform Errors',
        budget: 'Not set',
        status: 'Done',
        percent: 1.00,
        percentText: '100%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesSpotifiy,
        companyName: 'Launch our Mobile App',
        budget: '\$32,000',
        status: 'Done',
        percent: 1.00,
        percentText: '100%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesPricing,
        companyName: 'Add the New Pricing Page',
        budget: '\$400',
        percent: 0.25,
        status: 'In Progress',
        percentText: '25%',
      ),
      _buildDataRow(
        companyImagePath: Assets.assetsImagesShop,
        companyName: 'Redesign New Online Shop',
        budget: '\$7,600',
        status: 'In Progress',
        percent: 0.40,
        percentText: '40%',
      ),
    ];
  }
}
