import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/CustomCard.dart';

import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_bar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/menu_tab_bar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/what_is_in_your_kitchen.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 22,
              ),
              WhatIsInYourKitchen(),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: MenuTabBar(),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          sliver: SliverGrid.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const CustomCard();
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 168 / 205,
                mainAxisSpacing: 8,
                crossAxisSpacing: 14),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: SizedBox(
        //     height: 230,
        //     child: CustomGridveiw(),
        //   ),
        // ),
      ],
    );
  }
}
