import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';
import '../theme.dart';

class FavoriteButton extends StatefulWidget {
  final double? height;
  final double? blur;
  final double? colorOpacity;
  final double? iconHeight;

  const FavoriteButton({
    super.key,
    this.height,
    this.blur,
    this.colorOpacity,
    this.iconHeight,
  });

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool favorite = false;

  void onFavoriteTap() {
    favorite = !favorite;
    setState(() {
      //no-op
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: widget.blur ?? 4,
          sigmaY: widget.blur ?? 4,
        ),
        child: SizedBox(
          height: widget.height ?? 40,
          width: widget.height ?? 40,
          child: IconButton(
            onPressed: onFavoriteTap,
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: AppColors.black.withValues(
                alpha: widget.colorOpacity ?? 0.24,
              ),
              side: BorderSide(color: AppColors.white.withValues(alpha: 0.06)),
            ),
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 320),
              reverseDuration: const Duration(milliseconds: 320),
              child: favorite
                  ? SvgPicture.asset(
                      key: const ValueKey(1),
                      Assets.heartFilled,
                      height: widget.iconHeight ?? 28,
                    )
                  : SvgPicture.asset(
                      key: const ValueKey(0),
                      Assets.heart,
                      height: widget.iconHeight ?? 28,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
