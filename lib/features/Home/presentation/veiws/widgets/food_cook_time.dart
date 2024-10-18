
import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class FoodCookTime extends StatelessWidget {
  const FoodCookTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.access_time_filled,
              size: 16,
              color: AppColor.kPrimaryColor,
            ),
            const SizedBox(width: 4),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '20 min',
                style: AppTextStyle.medium11(context).copyWith(
                  color: AppColor.kPrimaryColor,
                  fontSize: 12
                ),
              ),
            ),
          ],
        ),
        const Icon(
          Icons.bolt,
          size: 18,
          color: AppColor.kPrimaryColor,
        ),
      ],
    );
  }
}
