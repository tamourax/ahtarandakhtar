import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:ahtarandakhtar/features/Home/presentation/data/tab_bar_data.dart';
import 'package:flutter/material.dart';

class MenuTabBar extends StatefulWidget {
  const MenuTabBar({
    super.key,
  });

  @override
  State<MenuTabBar> createState() => _MenuTabBarState();
}

class _MenuTabBarState extends State<MenuTabBar> {
  String selectedChip = 'All';
  Color sideColor = AppColor.kPrimaryColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      height: 50,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: tabBarData.map((label) {
            return Padding(
              padding: const EdgeInsets.only(right: 6),
              child: ChoiceChip(
                showCheckmark: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                side: BorderSide(
                    width: 1,
                    color: selectedChip == label ? sideColor : Colors.white),
                backgroundColor: AppColor.kPrimaryColor.withOpacity(0.1),
                
                selectedColor: AppColor.kPrimaryColor.withOpacity(0.1),
                label: Text(
                  label,
                  style: AppTextStyle.medium14(context)
                      .copyWith(color: AppColor.kPrimaryColor),
                ),
                selected: selectedChip == label,
                onSelected: (bool selected) {
                  setState(() {
                    selectedChip = selected ? label : selectedChip;
                  });
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
