import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/veiw/Widgets/ingredients_container.dart';
import 'package:flutter/material.dart';


class EnteredIngredientsHeader extends StatelessWidget {
  const EnteredIngredientsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Entered Ingredients',
            style: AppTextStyle.semiBold18(context),
          ),
          const SizedBox(height: 16,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffD4D4D4)),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const IngredientsContainer(),
          )
        ],
      ),
    );
  }
}
