import 'package:flutter/material.dart';

import '../../../configs/components/counter_card.dart';
import '../../../configs/components/price_with_rich_text.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({super.key});

  @override
  Widget build(BuildContext context) {
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
              const PriceWithRichText(
                first: '120 tmt',
                second: '200gr',
              ),
            ],
          ),
        ),
        const CounterCard(),
      ],
    );
  }
}
