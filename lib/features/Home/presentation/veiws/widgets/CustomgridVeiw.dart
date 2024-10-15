import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/CustomCard.dart';
import 'package:flutter/material.dart';

class CustomGridveiw extends StatelessWidget {
  const CustomGridveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10, crossAxisCount: 2, crossAxisSpacing: 10),
      itemBuilder: (context, index) => Customcard(),
    );
  }
}
