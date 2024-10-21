import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class Customaddbuttom extends StatelessWidget {
  const Customaddbuttom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () => {},
        child: Container(
          color: AppColor.kPrimaryColor,
          height: 40,
          width: 350,
          child: Row(
            children: [
              const Icon(
                Icons.add,
                size: 13,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'ADD',
                style: AppTextStyle.semiBold14(context)
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        ));
  }
}
