import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class Customnavbar extends StatefulWidget {
  const Customnavbar({super.key});

  @override
  State<Customnavbar> createState() => _CustomnavbarState();
}

class _CustomnavbarState extends State<Customnavbar> {
  int isSelected = 0;  

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: isSelected,
      onDestinationSelected: (int index) {
        setState(() {
          isSelected = index; 
        });
      },
      height: 66,
      destinations: [
        NavigationDestination(
          icon: Icon(
            Icons.home,
            color: isSelected == 0 ? AppColor.kPrimaryColor : Colors.black,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.restaurant,
            color: isSelected == 1 ? AppColor.kPrimaryColor : Colors.black,
          ),
          label: 'Recipes',
        ),
      ],
    );
  }
}
