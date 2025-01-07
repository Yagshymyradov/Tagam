import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/routes/routes.dart';
import '../../../configs/theme.dart';

class ProductCard extends StatefulWidget {
  final Color? backgroundColor;

  const ProductCard({super.key, this.backgroundColor});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool selected = false;
  bool favorite = false;

  void onSelectedProduct() {
    selected = !selected;
    setState(() {
      //no-op
    });
  }

  void onFavoriteTap() {
    favorite = !favorite;
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
      color: widget.backgroundColor ?? colorScheme.primaryContainer,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.pushNamed(
          context,
          NavigationRouteNames.productDetails,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/image.png',
                      fit: BoxFit.cover,
                      height: 144,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  right: 12,
                  top: 12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: SizedBox(
                        height: 32,
                        width: 32,
                        child: IconButton(
                          onPressed: onFavoriteTap,
                          style: IconButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: AppColors.black.withValues(alpha: 0.12),
                            side: BorderSide(color: AppColors.white.withValues(alpha: 0.06)),
                          ),
                          icon: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 320),
                            reverseDuration: const Duration(milliseconds: 320),
                            child: favorite
                                ? SvgPicture.asset(
                                    key: const ValueKey(1),
                                    Assets.heartFilled,
                                    height: 20,
                                  )
                                : SvgPicture.asset(
                                    key: const ValueKey(0),
                                    Assets.heart,
                                    height: 20,
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'С Семгой и шпинатом',
                    maxLines: 2,
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
