import 'package:ahtarandakhtar/features/Categories/presentation/veiws/widgets/CustomAddButtom.dart';

import 'package:flutter/material.dart';

import 'widgets/CategoriesVeiwBody.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});
  static const String routeName = '/categoriesview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Customaddbuttom(),body:  CategoriesViewBody(), );
  }
}
