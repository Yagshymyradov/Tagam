import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/assets.dart';
import '../../../configs/components/description_card.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const DescriptionCard(
      title: 'Description',
      text:
          'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    );
  }
}
