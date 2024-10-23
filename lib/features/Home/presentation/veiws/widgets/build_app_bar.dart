
  import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_text_logo.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

AppBar BuildAppBar(bool isDarkMode) {
    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const AppTextLogo(),
      leading: SvgPicture.asset(fit: BoxFit.scaleDown,Assets.assetsImagesMenuIcon,color: isDarkMode ? Colors.white : Colors.black,),
    );
  }
