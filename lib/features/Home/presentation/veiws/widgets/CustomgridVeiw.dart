import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/CustomCard.dart';
import 'package:flutter/material.dart';

class CustomGridveiw extends StatelessWidget {
  const CustomGridveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2 / 2, crossAxisCount: 2, crossAxisSpacing: 10),
      itemBuilder: (context, index) => CustomCard(),
    );
  }
}
