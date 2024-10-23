import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/core/widgets/CustomNavBar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_text_logo.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/build_app_bar.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/home_view_body.dart';

import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});
  static const homeViewRouteName = '/Homeview';

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;  
    setState(() {
      print(isDarkMode);
    });
    return  Scaffold(
      appBar:BuildAppBar(isDarkMode),
        bottomNavigationBar: const Customnavbar(
          selectedInd: 0,
        ),
        body: const HomeViewBody());
  }
}
