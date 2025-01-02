import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/extensions.dart';
import 'your_orders_tile.dart';

class MyOrderBottomSheet extends StatelessWidget {
  const MyOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textThemeEx = context.textThemeEx;
    final colorScheme = Theme.of(context).colorScheme;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: DraggableScrollableSheet(
        expand: false,
        snap: true,
        maxChildSize: 0.9,
        builder: (context, scrollController) => Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            controller: scrollController,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorScheme.primaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(Assets.deliveredWO),
                      const SizedBox(height: 14),
                      Text('Eltip berildi', style: textTheme.headlineLarge),
                      const SizedBox(height: 32),
                      Row(
                        spacing: 40,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: 8,
                            children: [
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(minimumSize: const Size(46, 46)),
                                icon: SvgPicture.asset(Assets.messageOutline),
                              ),
                              Text(
                                'Contact\n us',
                                textAlign: TextAlign.center,
                                style: textThemeEx.labelMediumWO,
                              ),
                            ],
                          ),
                          Column(
                            spacing: 8,
                            children: [
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(minimumSize: const Size(46, 46)),
                                icon: SvgPicture.asset(Assets.refresh),
                              ),
                              Text(
                                'Repeat\n order',
                                textAlign: TextAlign.center,
                                style: textThemeEx.labelMediumWO,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorScheme.primaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Address', style: textThemeEx.headlineSmallX),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          SvgPicture.asset(Assets.radioOn),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Aşgabat şäheri, Köpetdag etraby Andalyp köçesi 541 - jaýy',
                              style: textThemeEx.labelMediumWO,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorScheme.primaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Sizin sargytlaryňyz',
                        style: textThemeEx.headlineSmallX,
                      ),
                      const SizedBox(height: 16),
                      ...List.generate(
                        3,
                        (index) => Column(
                          children: [
                            if (index != 0) ...[
                              const SizedBox(height: 16),
                              const Divider(),
                              const SizedBox(height: 16),
                            ],
                            const YourOrdersTile(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
