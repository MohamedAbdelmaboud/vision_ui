import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'billing_card.dart';

class BillingInformationSection extends StatelessWidget {
  const BillingInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppDarkColors.gradiantCardColor1.withOpacity(0.9),
            AppDarkColors.gradiantCardColor2.withOpacity(0.5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Billing Information",
              style: AppStyles.bold14,
            ),
            const Gap(10),
            const Column(
              children: [
                BillingCard(
                  title: 'Oliver Liam',
                  companyName: "Company Name: Viking Burrito",
                  vatNum: 'VAT Number: FRB1235476',
                  emailAddress: "Email Address: oliver@burrito.com",
                ),
                Gap(5),
                BillingCard(
                  title: 'Oliver Liam',
                  companyName: "Company Name: Viking Burrito",
                  vatNum: 'VAT Number: FRB1235476',
                  emailAddress: "Email Address: oliver@burrito.com",
                ),
                Gap(5),
                BillingCard(
                  title: 'Oliver Liam',
                  companyName: "Company Name: Viking Burrito",
                  vatNum: 'VAT Number: FRB1235476',
                  emailAddress: "Email Address: oliver@burrito.com",
                ),
                Gap(5),
                BillingCard(
                  title: 'Oliver Liam',
                  companyName: "Company Name: Viking Burrito",
                  vatNum: 'VAT Number: FRB1235476',
                  emailAddress: "Email Address: oliver@burrito.com",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
