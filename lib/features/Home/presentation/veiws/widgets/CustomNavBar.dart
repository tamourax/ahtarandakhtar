import 'package:flutter/material.dart';

class Customnavbar extends StatelessWidget {
  const Customnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(destinations: [
      NavigationDestination(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      NavigationDestination(
        icon: Icon(Icons.home),
        label: 'Home',
      )
    ]);
  }
}
