import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/components/price_with_rich_text.dart';
import '../../../configs/theme.dart';
import 'widgets.dart';

class MyOrderTile extends StatelessWidget {
  const MyOrderTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textThemeEx = context.textThemeEx;

    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          useSafeArea: true,
          builder: (context) => const MyOrderBottomSheet(),
        );
      },
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: SizedBox(
                  width: 77,
                  height: 77,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) => Image.asset(
                      'assets/images/image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: SvgPicture.asset(Assets.delivered),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sargyda gaşylýar',
                style: textTheme.labelMedium,
              ),
              Text(
                'Eltip bermek',
                style: textThemeEx.labelSmallX,
              ),
              const SizedBox(height: 20),
              const PriceWithRichText(
                first: '120 tmt',
                second: 'Şu gün 18:40',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
