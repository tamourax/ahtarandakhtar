import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_bar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/menu_tab_bar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/what_is_in_your_kitchen.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
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
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: MenuTabBar(),
          ),
        )
      ],
    );
  }
}
