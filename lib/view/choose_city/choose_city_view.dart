import 'package:flutter/material.dart';

import '../../configs/extensions.dart';
import '../../configs/routes/routes.dart';
import '../../view_model/view_model.dart';
import 'widgets/widgets.dart';

class ChooseCityView extends StatelessWidget {
  const ChooseCityView({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingViewModel = context.read<OnboardingViewModel>();
    final textTheme = Theme.of(context).textTheme;
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 48,
              ),
              children: [
                Text(
                  'Şäher saňlaň!',
                  style: textTheme.displayMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Interact with all their content using a unique suite of apps available exclusively.',
                  style: textTheme.labelLarge,
                ),
                const SizedBox(height: 36),
                const CityTile(),
              ],
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 30,
              child: Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => onBoardingViewModel.onSkipButtonTap(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorScheme.primaryContainer,
                      ),
                      child: Text(
                        'Skip',
                        style: textThemeEx.labelLargeX,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(
                        context,
                        NavigationRouteNames.createAccount,
                      ),
                      child: Text(
                        'Continue',
                        style: textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
