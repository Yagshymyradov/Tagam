import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../configs/theme.dart';

class ProductOrderButton extends StatelessWidget {
  const ProductOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: AppColors.black.withValues(alpha: 0.04),
                ),
              ),
              color: AppColors.black.withValues(alpha: 0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 12, 8, 33),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Add order:',
                        style: textThemeEx.orderText,
                      ),
                      TextSpan(
                        text: '  120 manat',
                        style: textThemeEx.orderText?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
