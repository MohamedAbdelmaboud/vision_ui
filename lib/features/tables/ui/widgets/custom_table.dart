import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({
    super.key,
    this.color1 = AppDarkColors.gradiantTableColor1,
    this.color2 = AppDarkColors.gradiantTableColor2,
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
  final Color? color1;
  final Color? color2;
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
            color1!.withOpacity(0.7),
            color2!.withOpacity(0.7),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title!,
                style: AppStyles.bold14,
              ),
            ),
            const Gap(10),
            DataTable(
              dataRowMaxHeight: 50,
              columnSpacing: 30,
              headingTextStyle: TextStyle(
                color: textColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
              columns: columns(
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

List<DataColumn> columns(
  dynamic labelColum1,
  dynamic labelColum2,
  dynamic labelColum3,
  dynamic labelColum4,
  dynamic labelColum5,
  dynamic style,
) {
  return [
    DataColumn(
      label: Text(
        labelColum1!,
        style: style,
      ),
    ),
    DataColumn(
      label: Text(
        labelColum2!,
        style: style,
      ),
    ),
    DataColumn(
      label: Text(
        labelColum3!,
        style: style,
      ),
    ),
    DataColumn(
      label: Text(
        labelColum4!,
        style: style,
      ),
    ),
    DataColumn(
      label: Text(
        labelColum5!,
        style: style,
      ),
    ),
  ];
}
