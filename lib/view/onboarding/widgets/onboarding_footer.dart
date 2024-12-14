import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/extensions.dart';
import '../../../configs/theme/app_colors.dart';
import '../../../view_model/view_model.dart';

class OnboardingFooter extends StatelessWidget {
  final OnboardingViewModel value;

  const OnboardingFooter({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    return Column(
      children: [
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              AnimatedSize(
                duration: const Duration(milliseconds: 320),
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: value.onBackButtonTap,
                  child: SizedBox(
                    width: value.currentIndex == 0 ? 0 : null,
                    height: value.currentIndex == 0 ? 0 : null,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.darkGray,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        child: Text(
                          'Back',
                          style: textThemeEx.labelLargeX,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              if (value.currentIndex != 0) const SizedBox(width: 8),
              Expanded(
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 320),
                  child: ElevatedButton(
                    onPressed: () => value.onContinueButtonTap(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedOpacity(
                          opacity: value.currentIndex == 2 ? 1 : 0,
                          duration: const Duration(milliseconds: 320),
                          child: SvgPicture.asset(Assets.checkCircle),
                        ),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 320),
                          width: value.currentIndex == 2 ? 6 : 0,
                        ),
                        Text(
                          'Continue',
                          style: context.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
