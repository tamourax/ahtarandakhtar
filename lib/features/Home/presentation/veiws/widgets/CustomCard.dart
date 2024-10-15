import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 100, color: Colors.black, blurStyle: BlurStyle.outer)
        ]),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Card(
              clipBehavior: Clip.none,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          size: 16,
                          color: AppColor.kPrimaryColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: Text(
                            '20 min',
                            style: AppTextStyle.regular12
                                .copyWith(color: AppColor.kPrimaryColor),
                          ),
                        ),
                        Icon(
                          Icons.bolt,
                          color: AppColor.kPrimaryColor,
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Image.asset(Assets.assetsFoodItem),
              bottom: 100,
              left: 10,
            )
          ],
        ),
      ),
    );
  }
}
