import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_textstyle.dart';

class CategoriestitleName extends StatelessWidget {
  const CategoriestitleName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
        Assets.assetsImagesListveiwVegetables,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        'Vegetables',
        style: AppTextStyle.semiBold18(context),
      ),
    ]);
  }
}
