import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/CustomNavBar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/home_view_body.dart';

import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(bottomNavigationBar: Customnavbar(),body: HomeViewBody());
  }
}
