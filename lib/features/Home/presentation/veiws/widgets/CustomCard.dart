import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 100, color: Colors.black, blurStyle: BlurStyle.outer)
      ]),
      child: SizedBox(
        height: 100,
        width: 100,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mushroom Pizza',
                      style:
                          AppTextStyle.regular11.copyWith(color: Colors.black),
                    ),
                    Text(
                      'Lorem ipsum dolor sit...',
                      style: AppTextStyle.medium10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: AppColor.kPrimaryColor,
                        ),
                        Text(
                          '20 min',
                          style: AppTextStyle.regular12
                              .copyWith(color: AppColor.kPrimaryColor),
                        ),
                        Icon(Icons.bolt, color: AppColor.kPrimaryColor)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Image.asset(Assets.assetsFoodItem)
          ],
        ),
      ),
    );
  }
}
