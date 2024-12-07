import 'package:flutter/material.dart';

import '../extensions.dart';
import '../theme/colors.dart';

class NewFoodsCard extends StatelessWidget {
  const NewFoodsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textThemeX = context.textThemeEx;
    return SizedBox(
      height: 256,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => SizedBox(
          width: 184,
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
                top: 6,
                right: 10,
                child: Text(
                  'Täze',
                  style: textThemeX.headlineSmallX,
                ),
              ),
              Positioned(
                left: 10,
                right: 10,
                bottom: 16,
                child: Column(
                  children: [
                    Row(
                      children: List.generate(
                        5,
                        (e) => const Icon(Icons.star, size: 12),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Molten Dulce de Leche Cake',
                      style: textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 12),
      ),
    );
  }
}
