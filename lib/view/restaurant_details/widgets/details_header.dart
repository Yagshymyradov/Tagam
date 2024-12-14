import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/components/components.dart';
import '../../../configs/theme/app_colors.dart';
import '../../../model/model.dart';
import 'widgets.dart';

class DetailsHeader extends StatelessWidget {
  final AllRestaurantsModel? data;

  const DetailsHeader({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.white.withOpacity(1),
                AppColors.white.withOpacity(0),
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
          top: 56,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlurredIconButton(
                onTap: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_outlined),
              ),
              BlurredIconButton(
                onTap: () {},
                icon: SvgPicture.asset(Assets.heart),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 16,
          right: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data?.name ?? '',
                style: textTheme.displayMedium,
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  BlurCard(
                    icon: Assets.track,
                    title: 'Free',
                  ),
                  SizedBox(width: 8),
                  BlurCard(
                    icon: Assets.clock,
                    title: '20 min',
                  ),
                  SizedBox(width: 8),
                  BlurCard(
                    icon: Assets.spoonAndFork,
                    title: '36 food',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Divider(
                color: AppColors.white.withOpacity(0.14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
