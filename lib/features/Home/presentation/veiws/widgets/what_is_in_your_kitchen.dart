import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:ahtarandakhtar/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class WhatIsInYourKitchen extends StatelessWidget {
  const WhatIsInYourKitchen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'What’s in',
                    style: AppTextStyle.bold24(context),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Your Kitchen?',
                    style: AppTextStyle.bold24(context)
                        .copyWith(color: AppColor.kbackgroundColor),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                        maxWidth: 200), // Ensures text does not overflow
                    child: Text(
                      'Enter your ingredients and discover delicious recipes you can make.',
                      style: AppTextStyle.medium11(context),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 22),
                  child: CustomTextButton(),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
              ),
              child: Image.asset(
                'assets/images/Spoon.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
