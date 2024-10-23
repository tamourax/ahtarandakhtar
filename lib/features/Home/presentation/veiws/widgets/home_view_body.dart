import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/menu_tab_bar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/what_is_in_your_kitchen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CustomgridVeiw.dart';

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
             
              const SizedBox(
                height: 22,
              ),
              ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                  ),
                  child: const WhatIsInYourKitchen()),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: MenuTabBar(),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 22),
          sliver: CustomGridVeiw(),
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
