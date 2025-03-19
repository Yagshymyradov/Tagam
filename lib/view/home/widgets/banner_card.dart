import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../configs/components/optimized_image.dart';
import '../../../configs/theme/app_colors.dart';
import '../../../view_model/view_model.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bannersList = context.read<HomeViewModel>().bannersResponse.data;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CarouselSlider.builder(
              itemCount: bannersList?.length,
              itemBuilder: (context, index, realIndex) {
                return OptimizedImage(
                  imageUrl: bannersList?[index].image ?? '',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) => const ColoredBox(
                    color: AppColors.mediumGray,
                  ),
                  placeholderBuilder: (context) => const ColoredBox(
                    color: AppColors.mediumGray,
                  ),
                );
              },
              options: CarouselOptions(
                height: 160,
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: context.read<HomeViewModel>().setBannerCurrentIndex,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 3,
                ),
                child: BannerCount(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BannerCount extends StatelessWidget {
  const BannerCount({super.key});

  @override
  Widget build(BuildContext context) {
    final bannersList = context.watch<HomeViewModel>().bannersResponse.data;
    final currentBannerIndex = context.select<HomeViewModel, int?>(
      (value) => value.bannerCurrentIndex,
    );
    final textTheme = Theme.of(context).textTheme;
    return Text(
      '$currentBannerIndex/${bannersList?.length}',
      style: textTheme.bodySmall,
    );
  }
}
