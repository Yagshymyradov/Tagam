import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../model/home/home_model.dart';
import '../assets.dart';
import '../routes/routes.dart';
import '../theme/app_colors.dart';
import 'components.dart';

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
                      AppColors.white.withOpacity(1),
                      AppColors.white.withOpacity(0.6),
                    ],
                  ).createShader(bounds);
                },
                child: Image.network(
                  restaurant?.logo ?? '',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
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
          ],
        ),
      ),
    );
  }
}
