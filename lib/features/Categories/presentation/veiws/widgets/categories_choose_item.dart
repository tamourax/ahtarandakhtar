import 'package:ahtarandakhtar/features/Categories/presentation/veiws/widgets/active_category_item.dart';
import 'package:ahtarandakhtar/features/Categories/presentation/veiws/widgets/inactive_category_item.dart';
import 'package:flutter/material.dart';

class CategoriesChooseItem extends StatelessWidget {
  const CategoriesChooseItem({super.key, required this.isSelected});
final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected? const ActiveCategoryItem():const InActiveCategorieItem();
  }
}