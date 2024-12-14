import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 120,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => SizedBox(
          width: 100,
          child: Stack(
            fit: StackFit.expand,
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
                        AppColors.white.withOpacity(0.4),
                      ],
                    ).createShader(bounds);
                  },
                  child: Image.asset(
                    'assets/images/image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                right: 10,
                bottom: 14,
                child: Text(
                  'Breakfast',
                  style: textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
      ),
    );
  }
}
