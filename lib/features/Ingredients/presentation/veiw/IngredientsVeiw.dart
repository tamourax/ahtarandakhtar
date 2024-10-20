import 'package:ahtarandakhtar/core/widgets/CustomNavBar.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/veiw/Widgets/IngredientsVeiwBody.dart';
import 'package:flutter/material.dart';

class Ingredientsveiw extends StatelessWidget {
  const Ingredientsveiw({super.key});
  static const ingredientsveiwRoute = '/Ingredientsveiw';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: Customnavbar(
        selectedInd: 1,
      ),
      body: Ingredientsveiwbody(),
    );
  }
}
