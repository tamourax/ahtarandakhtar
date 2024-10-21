import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_bar.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/veiw/Widgets/CusomTextFelid.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/veiw/Widgets/CustomListVeiw.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/veiw/Widgets/entered_ingredients_header.dart';
import 'package:flutter/material.dart';

import 'IngredientsAppBar.dart';

class Ingredientsveiwbody extends StatelessWidget {
  const Ingredientsveiwbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColor.kPrimaryColor,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffFFA070),
                    AppColor.kPrimaryColor,
                  ],
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const CustomSecondAppBar(),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'My Ingredients',
                      style: AppTextStyle.semiBold18(context).copyWith(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Customtextfelid(
                    hintText: 'Enter an ingredient',
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200, left: 0),
            child: SizedBox(
              height: 90,
              child: Customlistveiw(),
            ),
          ),
        ]),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: EnteredIngredientsHeader(),
        ),
      ],
    );
  }
}
