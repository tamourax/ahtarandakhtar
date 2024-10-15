import 'package:flutter/material.dart';

class Customnavbar extends StatelessWidget {
  const Customnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(destinations: [Icon(Icons.home)]);
  }
}
