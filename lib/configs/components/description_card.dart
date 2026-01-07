import 'package:flutter/material.dart';

import '../../../configs/assets.dart';
import '../extensions.dart';

class DescriptionCard extends StatefulWidget {
  final String title;
  final String text;

  const DescriptionCard({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  State<DescriptionCard> createState() => _DescriptionCardState();
}

class _DescriptionCardState extends State<DescriptionCard> {
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
    final textThemeEx = context.textThemeEx;
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
            Text(widget.title, style: textTheme.bodyLarge),
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
                      widget.text,
                      key: const ValueKey(0),
                      style: textThemeEx.labelMediumWO,
                    )
                  : Text(
                      widget.text,
                      key: const ValueKey(1),
                      maxLines: 4,
                      style: textThemeEx.labelMediumWO,
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
