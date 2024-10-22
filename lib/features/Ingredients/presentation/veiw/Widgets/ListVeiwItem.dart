import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class Listveiwitem extends StatelessWidget {
  const Listveiwitem({super.key, required this.image, required this.title,required this.ontap});
  final String image,title;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 75 / 75,
      child: GestureDetector(
        onTap: ontap,
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Column(
              children: [
                Image.asset(image),
                const SizedBox(
                  height: 13,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    style: AppTextStyle.semiBold14(context)
                        .copyWith(color: Color(0xff1E2529),fontSize: 10),
                    title,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
