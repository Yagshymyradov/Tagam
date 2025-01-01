import 'package:flutter/material.dart';

import '../extensions.dart';
import '../theme/app_colors.dart';

class PriceWithRichText extends StatelessWidget {
  final String price;
  final String spanText;

  const PriceWithRichText({
    super.key,
    required this.price,
    required this.spanText,
  });

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: price,
            style: textThemeEx.priceBold,
          ),
          const WidgetSpan(child: SizedBox(width: 6)),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: ClipOval(
              child: SizedBox(
                width: 3,
                height: 3,
                child: ColoredBox(
                  color: AppColors.white.withValues(alpha: 0.6),
                ),
              ),
            ),
          ),
          const WidgetSpan(child: SizedBox(width: 6)),
          TextSpan(
            text: spanText,
            style: textThemeEx.labelSmallX,
          ),
        ],
      ),
    );
  }
}
