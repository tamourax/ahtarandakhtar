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
        height: 20,
        width: 20,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        'Vegetables',
        style: AppTextStyle.semiBold14(context).copyWith(color: Colors.black),
      ),
    ]);
  }
}
