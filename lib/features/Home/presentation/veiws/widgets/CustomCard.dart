import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

// Assuming you have your color and text style classes from your original imports
import '../../../../../core/utils/app_color.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3), // Adds shadow effect
          ),
        ],
      ),
      child: Stack(
        children: [
          // Background image covering full container with rounded corners
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              Assets.assetsFoodItem,
              fit: BoxFit.cover,
              height: double.infinity, // Fill the container height
              width: double.infinity, // Fill the container width
            ),
          ),
          // Information Card (Positioned at the bottom)
          Positioned(
            bottom: 0, // Positioned at the bottom of the container
            left: 0,
            right: 0,
            child: Container(
              height: 80, // Constrain height to avoid overflow
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mushroom Pizza',
                    style: AppTextStyle.regular11.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Lorem ipsum dolor sit...',
                    style: AppTextStyle.medium10,
                  ),
                  const SizedBox(height: 4),
                  Row(
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
                          Text(
                            '20 min',
                            style: AppTextStyle.regular12.copyWith(
                              color: AppColor.kPrimaryColor,
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
