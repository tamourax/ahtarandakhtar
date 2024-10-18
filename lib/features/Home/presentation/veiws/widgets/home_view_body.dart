import 'package:ahtarandakhtar/core/utils/size_config.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/CustomCard.dart';

import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_bar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/menu_tab_bar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/what_is_in_your_kitchen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
         SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 22,
              ),
              ConstrainedBox(constraints: const BoxConstraints(maxWidth: 400,),child: const WhatIsInYourKitchen()),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: MenuTabBar(),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          sliver: SliverGrid.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return const CustomCard();
            },
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:MediaQuery.of(context).size.width <= 270? 1: MediaQuery.of(context).size.width <= 500?2: 3,
                childAspectRatio: 168 / 205,
                mainAxisSpacing: 8,
                crossAxisSpacing: 14),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: SizedBox(
        //     height: 230,
        //     child: CustomCard(),
        //   ),
        // ),
      ],
    );
  }
}
