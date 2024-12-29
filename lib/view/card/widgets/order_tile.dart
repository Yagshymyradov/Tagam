import 'package:flutter/material.dart';

import '../../../configs/components/counter_card.dart';
import '../../../configs/extensions.dart';
import '../../../configs/theme/app_colors.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      spacing: 10,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            'assets/images/image.png',
            width: 68,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Christmas Gingerbread Cookies',
                style: textTheme.labelMedium,
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '120 tmt',
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
                      text: '200gr',
                      style: textThemeEx.labelSmallX,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const CounterCard(),
      ],
    );
  }
}
