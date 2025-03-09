import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

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
      child: IconButton(
        onPressed: onTap,
        style: IconButton.styleFrom(
          backgroundColor: AppColors.black.withValues(alpha: 0.2),
        ),
        icon: icon,
      ),
    );
  }
}
