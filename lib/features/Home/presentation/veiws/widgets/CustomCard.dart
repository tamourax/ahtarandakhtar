import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/card_info_details.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 168 / 205,
      child: Container(
        decoration: BoxDecoration(
          image:  const DecorationImage(
            image: AssetImage(Assets.assetsImagesFoodItem),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Align(
            alignment: Alignment.bottomCenter, child: CardInfoDetails()),
      ),
    );
  }
}
