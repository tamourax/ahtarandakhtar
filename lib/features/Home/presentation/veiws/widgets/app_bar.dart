import 'package:ahtarandakhtar/core/utils/AppImage.dart';
import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_text_logo.dart';
import 'package:flutter/material.dart';

import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 2),
        leading: GestureDetector(
            onTap: () {}, child: SvgPicture.asset(Assets.assetsImagesMenuIcon)),
        title: AppTextLogo(),
      ),
    );
  }
}
