import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/features/Ingredients/presentation/data/ListVeiwdata.dart';
import 'package:flutter/material.dart';

import 'CusomTextFelid.dart';
import 'ListVeiwItem.dart';

class Customlistveiw extends StatelessWidget {
  const Customlistveiw({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MapEntry<String, String>> mapEntries =
        listViewDataMap.entries.toList();
    return ListView.builder(
      padding: EdgeInsets.only(left: 70),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Listveiwitem(
            image: mapEntries[index].value,
            title: mapEntries[index].key,
          ),
        );
      },
      itemCount: mapEntries.length,
    );
  }
}
