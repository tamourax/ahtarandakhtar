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
            children: [
              Text(
                'What’s in',
                style: AppTextStyle.bold24,
              ),
              Text(
                'Your Kitchen?',
                style: AppTextStyle.bold24
                    .copyWith(color: AppColor.kbackgroundColor),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Enter your ingredients and discover\ndelicious recipes ypu can make.',
                style: AppTextStyle.medium11,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 22),
                child: CustomTextButton(),
              ),
            ],
          ),
          const SizedBox(
            width: 9,
          ),
          Flexible(
            child: Image.asset('assets/images/Spoon.png'),
          )
        ],
      ),
    );
  }
}
