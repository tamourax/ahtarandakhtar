import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/food_cook_time.dart';
import 'package:flutter/material.dart';

class FoodCardTexts extends StatelessWidget {
  const FoodCardTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        
      children: [
        const Expanded(child: SizedBox()),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Mushroom Pizza',
            style: AppTextStyle.medium16(context).copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(height: 2),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Lorem ipsum dolor sit...',
            style: AppTextStyle.regular12(context),
          ),
        ),
        const Spacer(),
        const FoodCookTime(),
        const Expanded(child: SizedBox())
        
      ],
    );
  }
}