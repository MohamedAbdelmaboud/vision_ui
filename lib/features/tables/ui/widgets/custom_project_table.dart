import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import 'build_data_column.dart';
import 'project_table_header.dart';

class CustomProjectTable extends StatelessWidget {
  const CustomProjectTable({
    super.key,
    this.raduis = 15,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 14,
    this.style,
    required this.rows,
    this.title = "title",
    this.labelColum1 = "label1",
    this.labelColum2 = "label2",
    this.labelColum3 = "label3",
    this.labelColum4 = "label4",
    this.labelColum5 = "",
  });
  final String? title;

  final double? raduis;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String? labelColum1;
  final String? labelColum2;
  final String? labelColum3;
  final String? labelColum4;
  final String? labelColum5;
  final TextStyle? style;
  final List<DataRow> rows;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppDarkColors.gradiantTableColor1,
            AppDarkColors.gradiantTableColor2
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(raduis!),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(15),
            ProjectTableHeader(title: title),
            const Gap(10),
            DataTable(
              dataRowMaxHeight: 50,
              columnSpacing: 30,
              headingTextStyle: TextStyle(
                color: textColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
              columns: BuildDataColumn().columns(
                labelColum1,
                labelColum2,
                labelColum3,
                labelColum4,
                labelColum5,
                style,
              ),
              rows: rows,
            ),
          ],
        ),
      ),
    );
  }
}
