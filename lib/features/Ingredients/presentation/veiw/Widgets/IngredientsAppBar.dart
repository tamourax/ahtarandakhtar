import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:ahtarandakhtar/features/Home/presentation/veiws/widgets/app_text_logo.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/AppImage.dart';

class Ingredientsappbar extends StatelessWidget {
  const Ingredientsappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: 'e7tar ',
          style: AppTextStyle.semiBoldMerienda16(context)
              .copyWith(color: Colors.white)),
      TextSpan(
          text: '& ',
          style: AppTextStyle.semiBoldMerienda16(context)
              .copyWith(color: Colors.white)),
      TextSpan(
          text: 'ekhtar',
          style: AppTextStyle.semiBoldMerienda16(context)
              .copyWith(color: Colors.white)),
    ]));
  }
}

class CustomSecondAppBar extends StatelessWidget {
  const CustomSecondAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21),
      child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 2),
          leading: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                Assets.assetsImagesMenuIcon,
                color: Colors.white,
              )),
          title: const Ingredientsappbar()),
    );
  }
}
