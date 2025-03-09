import 'package:flutter/material.dart';

import '../assets.dart';
import '../theme.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback? onTap;
  final double? height;
  final double? colorOpacity;
  final double? iconHeight;

  const FavoriteButton({
    super.key,
    required this.isFavorite,
    this.onTap,
    this.height,
    this.colorOpacity,
    this.iconHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40,
      width: height ?? 40,
      child: IconButton(
        onPressed: onTap,
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: AppColors.black.withValues(
            alpha: colorOpacity ?? 0.24,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          side: BorderSide(
            color: AppColors.white.withValues(alpha: 0.06),
          ),
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
    );
  }
}
