import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../configs/assets.dart';
import '../../configs/extensions.dart';
import '../../configs/routes/routes.dart';

class MyAddressesView extends StatelessWidget {
  const MyAddressesView({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeEx = context.textThemeEx;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 6,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          style: IconButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Salgylarym',
          style: textThemeEx.headlineLargeEx,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(
              context,
              NavigationRouteNames.addAddress,
            ),
            child: Text(
              'Salgy Goş',
              style: textTheme.labelMedium,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        itemCount: 10,
        itemBuilder: (context, index) => const MyAddressesCard(),
        separatorBuilder: (context, index) => const SizedBox(height: 8),
      ),
    );
  }
}

class MyAddressesCard extends StatelessWidget {
  const MyAddressesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textThemeEx = context.textThemeEx;
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      tileColor: colorScheme.primaryContainer,
      leading: SvgPicture.asset(Assets.place),
      title: Text(
        'Öýümiň salgysy',
        style: textThemeEx.labelMediumWO,
      ),
      subtitle: Text(
        'Aşgabat şäheri / Köpetdag etraby / Andalyp köçesi 541 - jaýy / 315 / 3 etaž +993 (65) 85-58-73',
        style: textTheme.labelMedium,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.all(16),
      titleAlignment: ListTileTitleAlignment.top,
      trailing: InkWell(
        splashColor: Colors.transparent,
        onTap: () {},
        child: SvgPicture.asset(Assets.write),
      ),
    );
  }
}
