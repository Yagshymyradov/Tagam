import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({super.key});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool readMore = false;

  void onReadMoreTap() {
    readMore = !readMore;
    setState(() {
      //no-op
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Description', style: textTheme.bodyLarge),
            const SizedBox(height: 16),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 320),
              switchInCurve: Curves.easeInOut,
              switchOutCurve: Curves.easeInOut,
              transitionBuilder: (child, animation) => SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
              child: readMore
                  ? Text(
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                      key: const ValueKey(0),
                      style: textTheme.labelMedium,
                    )
                  : Text(
                      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                      key: const ValueKey(1),
                      maxLines: 4,
                      style: textTheme.labelMedium,
                    ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: onReadMoreTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.secondary,
                maximumSize: const Size.fromHeight(32),
                minimumSize: const Size.fromHeight(32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Row(
                spacing: 6,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedRotation(
                    turns: readMore ? 0.5 : 1,
                    duration: const Duration(milliseconds: 320),
                    child: SvgPicture.asset(Assets.chevronDown),
                  ),
                  if (readMore)
                    Text(
                      'Read Less',
                      style: textTheme.titleSmall,
                    )
                  else
                    Text(
                      'Read More',
                      style: textTheme.titleSmall,
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
