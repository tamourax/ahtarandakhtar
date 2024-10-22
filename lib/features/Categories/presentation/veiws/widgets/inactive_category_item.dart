
import 'package:flutter/material.dart';

import '../../../../../core/utils/AppImage.dart';
import '../../../../../core/utils/app_textstyle.dart';

class InActiveCategorieItem extends StatelessWidget {
  const InActiveCategorieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xffD4D4D4,),width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 18,),
            Image.asset(Assets.assetsImagesPotatoes),
            const Spacer(),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Potato',
                style: AppTextStyle.regular12(context)
                    .copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}