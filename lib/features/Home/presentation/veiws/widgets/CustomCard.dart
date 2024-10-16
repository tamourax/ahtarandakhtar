import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/card_info_details.dart';
import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const CardInfoDetails(),
    );
  }
}
