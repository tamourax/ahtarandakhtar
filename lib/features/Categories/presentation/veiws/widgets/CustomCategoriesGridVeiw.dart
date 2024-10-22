import 'package:ahtarandakhtar/features/Categories/presentation/veiws/widgets/active_category_item.dart';
import 'package:flutter/material.dart';

import 'inactive_category_item.dart';

class CustomCategoiresGridVeiw extends StatefulWidget {
  const CustomCategoiresGridVeiw({
    super.key,
  });

  @override
  State<CustomCategoiresGridVeiw> createState() => _CustomCategoiresGridVeiwState();
}

class _CustomCategoiresGridVeiwState extends State<CustomCategoiresGridVeiw> {
  List<bool> isSelectedList = List.generate(12, (index) => false);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 12,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 100 / 100,
        mainAxisSpacing: 7,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isSelectedList[index] = !isSelectedList[index];
            });
          },
          child: isSelectedList[index]
              ? const ActiveCategoryItem()
              : const InActiveCategorieItem(),
        );
      },
    );
  }
}
