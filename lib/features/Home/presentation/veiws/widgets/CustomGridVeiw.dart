import 'package:flutter/material.dart';

import 'CustomCard.dart';

class CustomGridVeiw extends StatelessWidget {
  const CustomGridVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return const CustomCard();
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width <= 270
              ? 1
              : MediaQuery.of(context).size.width <= 500
                  ? 2
                  : 3,
          childAspectRatio: 168 / 205,
          mainAxisSpacing: 8,
          crossAxisSpacing: 14),
    );
  }
}
