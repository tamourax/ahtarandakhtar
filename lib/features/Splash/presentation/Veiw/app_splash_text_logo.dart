
import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class AppSplashTextLogo extends StatelessWidget {
  const AppSplashTextLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: 'e7tar ', style: AppTextStyle.semiBoldMerienda16(context).copyWith(color: Colors.black)),
      TextSpan(
          text: '& ',
          style: AppTextStyle.semiBoldMerienda16(context)
              .copyWith(color: AppColor.kPrimaryColor)),
      TextSpan(text: 'ekhtar', style: AppTextStyle.semiBoldMerienda16(context).copyWith(color: Colors.black)),
    ]));
  }
}
