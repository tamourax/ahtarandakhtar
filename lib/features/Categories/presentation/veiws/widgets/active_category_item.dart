import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class ActiveCategoryItem extends StatelessWidget {
  const ActiveCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColor.kPrimaryColor, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Stack(fit: StackFit.loose,alignment: Alignment.topCenter, children: [
          const Positioned(
            right: 0,
            child: Icon(
              Icons.check_box,
              color: AppColor.kPrimaryColor,
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 18,
              ),
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
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
