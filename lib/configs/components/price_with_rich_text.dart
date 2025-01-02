import 'package:flutter/material.dart';

import '../extensions.dart';
import '../theme/app_colors.dart';

class PriceWithRichText extends StatelessWidget {
  final String first;
  final String second;
  final TextStyle? style;

  const PriceWithRichText({
    super.key,
    required this.first,
    required this.second,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: first,
            style: style ?? textThemeEx.priceBold,
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
            text: second,
            style: style ?? textThemeEx.labelSmallX,
          ),
        ],
      ),
    );
  }
}
