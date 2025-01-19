import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';
import '../theme.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback? onTap;
  final double? height;
  final double? blur;
  final double? colorOpacity;
  final double? iconHeight;

  const FavoriteButton({
    super.key,
    required this.isFavorite,
    this.onTap,
    this.height,
    this.blur,
    this.colorOpacity,
    this.iconHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blur ?? 4,
          sigmaY: blur ?? 4,
        ),
        child: SizedBox(
          height: height ?? 40,
          width: height ?? 40,
          child: IconButton(
            onPressed: onTap,
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: AppColors.black.withValues(
                alpha: colorOpacity ?? 0.24,
              ),
              side: BorderSide(color: AppColors.white.withValues(alpha: 0.06)),
            ),
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 320),
              reverseDuration: const Duration(milliseconds: 320),
              child: isFavorite
                  ? SvgPicture.asset(
                      key: const ValueKey(1),
                      Assets.heartFilled,
                      height: iconHeight ?? 28,
                    )
                  : SvgPicture.asset(
                      key: const ValueKey(0),
                      Assets.heart,
                      height: iconHeight ?? 28,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
