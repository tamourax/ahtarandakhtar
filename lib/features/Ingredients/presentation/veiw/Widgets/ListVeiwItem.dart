import 'package:ahtarandakhtar/features/Ingredients/presentation/data/ListVeiwdata.dart';
import 'package:flutter/material.dart';

class Listveiwitem extends StatelessWidget {
  const Listveiwitem({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    final List<MapEntry<String, String>> mapEntries =
        listViewDataMap.entries.toList();
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: [
            Text(
              title,
            ),
            const SizedBox(
              height: 13,
            ),
            Image.asset(image),
          ],
        ));
  }
}
