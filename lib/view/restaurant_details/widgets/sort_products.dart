import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme.dart';
import 'widgets.dart';

class SortProducts extends StatelessWidget {
  const SortProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Center(
            child: SizedBox(
              width: 39,
              height: 4,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 4, sigmaX: 4),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 12,
          left: 0,
          right: 0,
          bottom: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                spacing: 8,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 24),
                      Text('Sort by', style: textThemeEx.headlineSmallX),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        icon: SvgPicture.asset(Assets.close),
                      ),
                    ],
                  ),
                  const SortTile(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

