import 'package:flutter/material.dart';

import '../extensions.dart';
import '../theme/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.darkGray,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              child: Image.asset(
                'assets/images/pizza.png',
                fit: BoxFit.cover,
                height: 144,
              ),
            ),
            const SizedBox(height: 14),
            const Divider(),
            const SizedBox(height: 16),
            Text(
              'С Семгой и шпинатом',
              style: textTheme.labelMedium,
            ),
            Text(
              'Размер— 30см',
              style: context.textThemeEx.labelSmallX,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '120 tmt',
                  style: context.textThemeEx.priceMedium,
                ),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.white.withOpacity(0.12),
                  ),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
