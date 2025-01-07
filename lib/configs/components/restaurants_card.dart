import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/home/home_model.dart';
import '../assets.dart';
import '../routes/routes.dart';
import '../theme/app_colors.dart';
import 'components.dart';
import 'favorite_button.dart';
import 'optimized_image.dart';

class RestaurantsCard extends StatelessWidget {
  final AllRestaurantsModel? restaurant;
  final bool? isTop;

  const RestaurantsCard({
    super.key,
    this.isTop,
    this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      onTap: () => Navigator.pushNamed(
        context,
        NavigationRouteNames.restaurantDetails,
        arguments: restaurant?.id,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.white.withValues(alpha: 1),
                      AppColors.white.withValues(alpha: 0.6),
                    ],
                  ).createShader(bounds);
                },
                child: OptimizedImage(
                  imageUrl: restaurant?.logo ?? '',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: AppColors.mediumGray,
                    width: double.infinity,
                    height: 200,
                  ),
                  placeholderBuilder: (context) => Container(
                    color: AppColors.mediumGray,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              ),
            ),
            if (isTop == true)
              Positioned(
                top: 10,
                right: 10,
                child: Stack(
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
              ),
            Positioned(
              bottom: 12,
              left: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Soltan restoran',
                    style: textTheme.titleLarge,
                  ),
                  const SizedBox(height: 14),
                  const Row(
                    children: [
                      SmallBlurCard(
                        icon: Assets.track,
                        title: 'Free',
                      ),
                      SizedBox(width: 8),
                      SmallBlurCard(
                        icon: Assets.clock,
                        title: '20 min',
                      ),
                      SizedBox(width: 8),
                      SmallBlurCard(
                        icon: Assets.spoonAndFork,
                        title: '36 food',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 8,
              top: 8,
              child: FavoriteButton(),
            ),
          ],
        ),
      ),
    );
  }
}
