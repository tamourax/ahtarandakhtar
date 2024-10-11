
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 2),
      leading:  IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
      title: Text(
        r'e7tar & ekhtar',
        style: AppTextStyle.semiBold14,
      ),
    );
  }
}
