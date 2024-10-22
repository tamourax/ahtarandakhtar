import 'package:ahtarandakhtar/features/Categories/presentation/veiws/widgets/CategoriesTitleName.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../Ingredients/presentation/veiw/Widgets/CusomTextFelid.dart';
import 'CustomCategoriesGridVeiw.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: CustomAppBar(),
          ),
          SizedBox(
            height: 28,
          ),
          CategoriestitleName(),
          SizedBox(
            height: 20,
          ),
          Customtextfelid(
            hintText: 'Search',
          ),
          SizedBox(
            height: 20,
          ),
          // CustomCategoriesGridItem()
          Expanded(child: CustomCategoiresGridVeiw()),
        ],
      ),
    );
  }
}
