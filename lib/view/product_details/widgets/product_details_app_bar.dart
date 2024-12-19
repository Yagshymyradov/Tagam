import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../configs/assets.dart';
import '../../../configs/components/components.dart';
import '../../../configs/theme.dart';

class ProductDetailsAppBar extends StatefulWidget {
  const ProductDetailsAppBar({super.key});

  @override
  State<ProductDetailsAppBar> createState() => _ProductDetailsAppBarState();
}

class _ProductDetailsAppBarState extends State<ProductDetailsAppBar> {
  int currentIndex = 0;

  void onPageChanged(int index) {
    currentIndex = index;
    setState(() {
      //no-op
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SliverAppBar(
      expandedHeight: 455,
      toolbarHeight: 40,
      leadingWidth: 56,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: BlurredIconButton(
          onTap: () => Navigator.pop(context),
          icon: SvgPicture.asset(Assets.arrowLeft),
        ),
      ),
      actions: [
        BlurredIconButton(
          onTap: () {},
          icon: SvgPicture.asset(Assets.heart),
        ),
        const SizedBox(width: 10),
      ],
      flexibleSpace: Stack(
        fit: StackFit.expand,
        children: [
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, realIndex) => Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/image.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 130,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.black,
                            AppColors.black.withAlpha(0),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 258,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.black.withAlpha(0),
                            AppColors.black,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            options: CarouselOptions(
              height: double.infinity,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) => onPageChanged(index),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 16,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 24,
              children: [
                Text(
                  'Beef Cheese Burger',
                  style: textTheme.displaySmall,
                ),
                Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          child: AnimatedSmoothIndicator(
                            activeIndex: currentIndex,
                            count: 4,
                            onDotClicked: onPageChanged,
                            effect: JumpingDotEffect(
                              dotHeight: 8,
                              dotWidth: 8,
                              spacing: 6,
                              activeDotColor: AppColors.white,
                              dotColor: AppColors.white.withValues(alpha: 0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
