import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../../../view_model/view_model.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingViewModel value;

  const OnboardingContent({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: value.controller,
        onPageChanged: value.onPageChanged,
        children: const [
          _OnboardingContent(
            image: Assets.foodGroup,
            title: 'Breakfast',
            description:
                'Interact with all their content using a unique suite of apps available exclusively.',
          ),
          _OnboardingContent(
            image: Assets.desertGroup,
            title: 'Sweats',
            description:
                'Interact with all their content using a unique suite of apps available exclusively.',
          ),
          _OnboardingContent(
            image: Assets.someFoods,
            title: 'All dishes in this app',
            description:
                'Interact with all their content using a unique suite of apps available exclusively.',
          ),
        ],
      ),
    );
  }
}

class _OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const _OnboardingContent({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const SizedBox(height: 100),
        Image.asset(image),
        const SizedBox(height: 42),
        const Spacer(),
        Text(
          title,
          style: textTheme.titleLarge,
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: textTheme.labelLarge,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
