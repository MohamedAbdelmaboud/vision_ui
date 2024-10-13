import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../widgets/sign_in_app_bar.dart';
import '../widgets/sign_in_body.dart';
import '../widgets/sign_in_right_side.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

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
                  decoration: buildSignInSectionDecoration(context),
                  child: const SignInBody(),
                ),
              ),
            ],
          ),
          const SignInAppBar()
        ],
      ),
    );
  }

  BoxDecoration buildSignInSectionDecoration(BuildContext context) {
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
