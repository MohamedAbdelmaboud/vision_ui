import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../widgets/sign_in_app_bar.dart';
import '../widgets/sign_in_right_side.dart';
import '../widgets/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: SignInLeftSide(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: buildSignUpSectionDecoration(context),
                  child: const SignUpBody(),
                ),
              ),
            ],
          ),
          const SignInAppBar()
        ],
      ),
    );
  }

  BoxDecoration buildSignUpSectionDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: context.theme.gradientTableColors,
        // ignore color
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
    );
  }
}
