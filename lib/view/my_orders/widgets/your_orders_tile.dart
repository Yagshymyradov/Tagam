import 'package:flutter/material.dart';

import '../../../configs/components/price_with_rich_text.dart';
import '../../../configs/extensions.dart';

class YourOrdersTile extends StatelessWidget {
  const YourOrdersTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textThemeEx = context.textThemeEx;

    return Row(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/images/image.png',
                width: 77,
                height: 77,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Christmas Gingerbread Cookies',
                style: textTheme.labelMedium,
              ),
              Text(
                '200gr',
                style: textThemeEx.labelSmallX,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: PriceWithRichText(
                  first: '1 sany',
                  second: '120 tmt',
                  style: textThemeEx.priceSmall,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
