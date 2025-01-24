import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../configs/assets.dart';
import '../../../configs/theme.dart';
import '../../../view_model/view_model.dart';

enum CityType {
  ashgabat,
  ahal,
  balkanabat,
  turkmenabat,
  mary,
  dashoguz;
}

extension CityTypeEx on CityType {
  String get title {
    switch (this) {
      case CityType.ashgabat:
        return 'Ashgabat';
      case CityType.ahal:
        return 'Ahal';
      case CityType.balkanabat:
        return 'Balkanabat';
      case CityType.turkmenabat:
        return 'Turkmenabat';
      case CityType.mary:
        return 'Mary';
      case CityType.dashoguz:
        return 'Dashoguz';
    }
  }
}

class CityTile extends StatelessWidget {
  const CityTile({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;
    final cityType = context.select((CreateAccountViewModel value) => value.cityType);

    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: CityType.values
          .map(
            (e) => ListTile(
              onTap: () => context.read<CreateAccountViewModel>().setCity(e),
              leading: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: SvgPicture.asset(Assets.location),
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              tileColor: cityType == e ? AppColors.charlestonGreen : colorScheme.primaryContainer,
              title: Text(
                e.title,
                style: textThemeEx.labelLargeX,
              ),
              trailing: Checkbox(
                value: cityType == e,
                activeColor: AppColors.white,
                onChanged: (v) => context.read<CreateAccountViewModel>().setCity(e),
              ),
            ),
          )
          .toList(growable: false),
    );
  }
}
