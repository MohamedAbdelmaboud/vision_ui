import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'billing_card.dart';

class BillingInformationSection extends StatelessWidget {
  const BillingInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: context.theme.gradientTableColors,
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
              style: AppStyles.bold14(context),
            ),
            const Gap(10),
            const Column(
              children: [
                BillingCard(
                  title: 'Mohamed Abdelmaboud',
                  companyName: "Company Name: Viking Burrito",
                  vatNum: 'VAT Number: FRB1235476',
                  emailAddress: "Email Address: mohamed@burrito.com",
                ),
                Gap(5),
                BillingCard(
                  title: 'Esraa Ehab',
                  companyName: "Company Name: StoneTech",
                  vatNum: 'VAT Number: GER8478392',
                  emailAddress: "Email Address: esraa@stonetech.com",
                ),
                Gap(5),
                BillingCard(
                  title: 'Liam Johnson',
                  companyName: "Company Name: Fresh Fruit Inc.",
                  vatNum: 'VAT Number: USA5586394',
                  emailAddress: "Email Address: liam@fruitinc.com",
                ),
                Gap(5),
                BillingCard(
                  title: 'Sophia Davis',
                  companyName: "Company Name: Digital Solutions",
                  vatNum: 'VAT Number: ITA9893847',
                  emailAddress: "Email Address: sophia@digitalsolutions.com",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
