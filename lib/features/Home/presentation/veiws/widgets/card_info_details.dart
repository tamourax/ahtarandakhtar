
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/food_card_text.dart';
import 'package:flutter/material.dart';


class CardInfoDetails extends StatelessWidget {
  const CardInfoDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
          aspectRatio: 168 / 86,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: const FoodCardTexts(),
          ),
        );

    // Stack(
    //   children: [
    //     ClipRRect(
    //       borderRadius: BorderRadius.circular(12),
    //       child: Image.asset(
    //         Assets.assetsFoodItem,
    //         fit: BoxFit.fitWidth,
    //         // height: double.infinity,
    //         // width: double.infinity,
    //       ),
    //     ),
    //     Positioned(
    //       bottom: 0,
    //       left: 0,
    //       right: 0,
    //       child: AspectRatio(
    //         aspectRatio: 168 / 86,
    //         child: Container(
    //           decoration: const BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.all(Radius.circular(12)),
    //           ),
    //           padding: const EdgeInsets.symmetric(horizontal: 11),
    //           child: const FoodCardTexts(),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
