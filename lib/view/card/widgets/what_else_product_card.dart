import 'package:flutter/material.dart';

import '../../../configs/routes/routes.dart';
import '../../../configs/theme.dart';

class WhatElseProductCard extends StatefulWidget {
  const WhatElseProductCard({super.key});

  @override
  State<WhatElseProductCard> createState() => _WhatElseProductCardState();
}

class _WhatElseProductCardState extends State<WhatElseProductCard> {
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
    return Material(
      borderRadius: BorderRadius.circular(16),
      color: AppColors.white.withValues(alpha: 0.08),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.pushNamed(
          context,
          NavigationRouteNames.productDetails,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/image.png',
                  fit: BoxFit.cover,
                  height: 144,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                  maximumSize: const Size(32, 32),
                                  minimumSize: const Size(32, 32),
                                  padding: EdgeInsets.zero,
                                ),
                                icon: const Icon(
                                  Icons.check,
                                  size: 18,
                                ),
                              )
                            : IconButton(
                                key: const ValueKey(0),
                                style: IconButton.styleFrom(
                                  maximumSize: const Size(32, 32),
                                  minimumSize: const Size(32, 32),
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: onSelectedProduct,
                                icon: const Icon(Icons.add, size: 18),
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
