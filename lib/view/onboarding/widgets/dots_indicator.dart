import 'package:flutter/material.dart';

import '../../../configs/theme/colors.dart';
import '../../../view_model/view_model.dart';

class DotsIndicator extends StatelessWidget {
  final OnboardingViewModel value;

  const DotsIndicator({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        value.dotsLength,
        (index) {
          return Padding(
            padding: EdgeInsets.only(
              right: value.currentIndex == 0 && index == 0 ? 6 : 0,
            ),
            child: DecoratedBox(
              decoration: value.currentIndex >= index
                  ? BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: index == 0 ? const Radius.circular(16) : Radius.zero,
                        right: index == value.currentIndex
                            ? const Radius.circular(16)
                            : Radius.zero,
                      ),
                      color: AppColors.goldenOlive,
                    )
                  : const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 320),
                  padding: EdgeInsets.only(
                    right: value.dotsSpace(index),
                  ),
                  child: const ClipOval(
                    child: SizedBox(
                      width: 8,
                      height: 8,
                      child: ColoredBox(color: AppColors.softGray),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
