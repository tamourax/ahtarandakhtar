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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'What’s in',
                style: AppTextStyle.bold24(context),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
              Text(
                'Your Kitchen?',
                style: AppTextStyle.bold24(context)
                    .copyWith(color: AppColor.kbackgroundColor),
              ),
              const SizedBox(
                height: 6,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                      maxWidth: 200), // Constrain width to force scaling
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
          const SizedBox(
            width: 20,
          ),
          // Constrain the image with a minimum width
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100, // Minimum width before the image stops shrinking
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
