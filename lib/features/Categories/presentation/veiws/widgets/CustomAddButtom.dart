import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class Customaddbuttom extends StatelessWidget {
  const Customaddbuttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color:  Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 19),
        child: FloatingActionButton(
          backgroundColor: AppColor.kPrimaryColor,
            onPressed: () => {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Add',
                  style: AppTextStyle.semiBold14(context)
                      .copyWith(color: Colors.white),
                )
              ],
            )),
      ),
    );
  }
}
