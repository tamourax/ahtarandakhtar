import 'package:flutter/material.dart';

import '../../../../../core/utils/AppImage.dart';
import '../../../../../core/utils/app_textstyle.dart';

class CustomCategoriesGridItem extends StatelessWidget {
  const CustomCategoriesGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Image.asset(Assets.assetsImagesPepperContainerPic),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Potato',
            style: AppTextStyle.regular12(context)
                .copyWith(color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
