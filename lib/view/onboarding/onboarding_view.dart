import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/view_model.dart';
import 'widgets/widgets.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingViewModel>(
      builder: (context, value, child) {
        return Scaffold(
          body: Column(
            children: [
              OnboardingContent(value: value),
              DotsIndicator(value: value),
              OnboardingFooter(value: value),
            ],
          ),
        );
      },
    );
  }
}
