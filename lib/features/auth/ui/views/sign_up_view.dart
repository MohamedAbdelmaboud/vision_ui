import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
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
                child: SignInRightSide(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppDarkColors.gradiantBackgoundSigninColor1,
                        AppDarkColors.gradiantBackgoundSigninColor2,
                        AppDarkColors.gradiantBackgoundSigninColor3,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
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
}
