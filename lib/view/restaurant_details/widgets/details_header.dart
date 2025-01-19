import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme/app_colors.dart';
import '../../../view_model/view_model.dart';
import 'widgets.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.read<RestaurantDetailsViewModel>().detailsResponseState.data;
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      fit: StackFit.expand,
      children: [
        ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.white.withValues(alpha: 1),
                AppColors.white.withValues(alpha: 0),
              ],
            ).createShader(bounds);
          },
          child: SizedBox(
            width: double.infinity,
            height: 424,
            child: Image.network(
              data?.logo ?? '',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  data?.name ?? '',
                  style: textTheme.displayMedium,
                ),
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    BlurCard(
                      icon: Assets.track,
                      title: 'Delivery',
                      subTitle: '${data?.deliveryFee ?? 0} TMT',
                    ),
                    BlurCard(
                      icon: Assets.spoonAndFork,
                      title: 'Dishes',
                      subTitle: '${data?.dishCount} food',
                    ),
                    BlurCard(
                      icon: Assets.clock,
                      title: 'Work time',
                      subTitle: data?.workingTime ?? '',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Divider(color: AppColors.white.withValues(alpha: 0.14)),
            ],
          ),
        ),
      ],
    );
  }
}
