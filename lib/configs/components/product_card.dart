import 'package:flutter/material.dart';

import '../extensions.dart';
import '../routes/routes.dart';
import '../theme/app_colors.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool selected = false;

  void onSelectedProduct() {
    selected = !selected;
    setState(() {
      //no-op
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.darkGray,
      ),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => Navigator.pushNamed(
            context,
            NavigationRouteNames.productDetails,
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
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 320),
                      reverseDuration: const Duration(milliseconds: 320),
                      child: selected
                          ? IconButton(
                              key: const ValueKey(1),
                              onPressed: onSelectedProduct,
                              style: IconButton.styleFrom(
                                backgroundColor: colorScheme.scrim,
                              ),
                              icon: const Icon(Icons.check),
                            )
                          : IconButton(
                              key: const ValueKey(0),
                              onPressed: onSelectedProduct,
                              icon: const Icon(Icons.add),
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
