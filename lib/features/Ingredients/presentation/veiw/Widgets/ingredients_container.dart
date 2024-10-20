
import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class IngredientsContainer extends StatelessWidget {
  const IngredientsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Assets.assetsImagesPepperContainerPic),
          const SizedBox(width: 8,),
          Text('Bell pepper',style: AppTextStyle.medium14(context),),
          const SizedBox(width: 8,),
          IconButton(onPressed: () {
            
          }, icon: const Icon(Icons.delete))
        ]
      ),
    );
  }
}
