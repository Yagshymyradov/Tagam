import 'dart:ui';

import 'package:flutter/material.dart';

import '../theme/colors.dart';

class BlurredIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;

  const BlurredIconButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: IconButton(
          onPressed: onTap,
          style: IconButton.styleFrom(
            backgroundColor: AppColors.white.withOpacity(0.14),
          ),
          icon: icon,
        ),
      ),
    );
  }
}
