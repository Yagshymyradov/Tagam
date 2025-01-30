import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../configs/assets.dart';
import '../../../configs/theme.dart';

class AlertLanguageDialog extends StatelessWidget {
  const AlertLanguageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          'Dil saýlaň',
          textAlign: TextAlign.center,
          style: textThemeEx.headlineSmallX,
        ),
        backgroundColor: AppColors.raisinBlack,
        contentPadding: EdgeInsets.zero,
        content: SizedBox(
          width: MediaQuery.of(context).size.width - 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              spacing: 8,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 12),
                ListTile(
                  onTap: () {},
                  tileColor: AppColors.white.withValues(alpha: 0.08),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(16, 0, 14, 0),
                  visualDensity: const VisualDensity(vertical: -2),
                  title: Text(
                    'Türkmen',
                    style: textTheme.titleMedium,
                  ),
                  trailing: Icon(
                    Icons.check,
                    color: colorScheme.onPrimary,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  tileColor: AppColors.white.withValues(alpha: 0.08),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(16, 0, 14, 0),
                  visualDensity: const VisualDensity(vertical: -2),
                  title: Text(
                    'Русский',
                    style: textTheme.labelLarge,
                  ),
                  trailing: null,
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.checkCircle),
                Text(
                  'Apply',
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
