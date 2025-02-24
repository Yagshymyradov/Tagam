import 'package:flutter/material.dart';

import '../../configs/routes/routes.dart';
import 'widgets/widgets.dart';

class ChooseCityView extends StatelessWidget {
  const ChooseCityView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(
                      context,
                      NavigationRouteNames.createAccount,
                    ),
                    child: Text(
                      'Skip',
                      style: textTheme.bodyMedium,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(
                      context,
                      NavigationRouteNames.createAccount,
                    ),
                    child: Text(
                      'Continue',
                      style: textTheme.bodyMedium,
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
