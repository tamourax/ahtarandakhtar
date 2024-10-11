
import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
              AppColor.kPrimaryColor)),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24, vertical: 8),
        child: Text(
          'Find Recipes',
          style: AppTextStyle.semiBold18,
        ),
      ),
    );
  }
}
