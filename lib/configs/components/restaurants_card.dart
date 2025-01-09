import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/home/home_model.dart';
import '../assets.dart';
import '../routes/routes.dart';
import '../theme/app_colors.dart';
import 'components.dart';
import 'favorite_button.dart';
import 'optimized_image.dart';

enum RestaurantStatus { open, close }

extension RestaurantStatusExtension on RestaurantStatus {
  String get displayText {
    switch (this) {
      case RestaurantStatus.open:
        return 'Open';
      case RestaurantStatus.close:
        return 'Close';
    }
  }

  Color get color {
    switch (this) {
      case RestaurantStatus.open:
        return AppColors.kellyGreen;
      case RestaurantStatus.close:
        return AppColors.radicalRed;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case RestaurantStatus.open:
        return AppColors.kellyGreen.withValues(alpha: 0.1);
      case RestaurantStatus.close:
        return AppColors.radicalRed.withValues(alpha: 0.1);
    }
  }
}

class RestaurantsCard extends StatelessWidget {
  final AllRestaurantsModel? restaurant;
  final RestaurantStatus status;
  final bool isTop;

  const RestaurantsCard({
    super.key,
    this.isTop = false,
    this.restaurant,
    this.status = RestaurantStatus.open,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      onTap: () => Navigator.pushNamed(
        context,
        NavigationRouteNames.restaurantDetails,
        arguments: restaurant?.id,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: OptimizedImage(
                      imageUrl: restaurant?.logo ?? '',
                      width: double.infinity,
                      height: 174,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: AppColors.mediumGray,
                        width: double.infinity,
                      ),
                      placeholderBuilder: (context) => Container(
                        color: AppColors.mediumGray,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 8,
                    top: 8,
                    child: FavoriteButton(),
                  ),
                  Positioned(
                    top: isTop == true ? 8 : 12,
                    left: 8,
                    child: Row(
                      spacing: 8,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.screaminGreen,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                            child: Text('-30%'),
                          ),
                        ),
                        if (isTop == true)
                          Stack(
                            children: [
                              SvgPicture.asset(Assets.topSticker),
                              const Positioned.fill(
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 8,
                    bottom: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: OptimizedImage(
                        imageUrl: restaurant?.logo ?? '',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: AppColors.white,
                          width: double.infinity,
                        ),
                        placeholderBuilder: (context) => Container(
                          color: AppColors.white,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Soltan restoran',
                    style: textTheme.headlineLarge,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: status.backgroundColor,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [BoxShadow(blurRadius: 20)],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: Text(
                        status.name,
                        style: textTheme.labelMedium?.copyWith(
                          color: status.color,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            const SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 8,
                children: [
                  SmallBlurCard(
                    icon: Assets.spoonAndFork,
                    title: '36 food',
                  ),
                  SmallBlurCard(
                    icon: Assets.track,
                    title: 'Free',
                  ),
                  SmallBlurCard(
                    icon: Assets.clock,
                    title: '09:00 - 22:00',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
