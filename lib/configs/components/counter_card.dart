import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(33),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          spacing: 10,
          children: [
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                fixedSize: const Size(32, 32),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: const Icon(Icons.remove, size: 18),
            ),
            Text(
              '2',
              style: textTheme.headlineSmall,
            ),
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                fixedSize: const Size(32, 32),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: const Icon(Icons.add, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}
