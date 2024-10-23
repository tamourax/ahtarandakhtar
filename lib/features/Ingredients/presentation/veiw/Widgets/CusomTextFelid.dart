import 'package:ahtarandakhtar/core/utils/app_color.dart';
import 'package:ahtarandakhtar/core/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class Customtextfelid extends StatelessWidget {
  const Customtextfelid({super.key, required this.hintText, required this.borderwidth});

  final String hintText;
  final double borderwidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide:  BorderSide(color:borderwidth == 0 ? Colors.white : Colors.grey),
            ),
            focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide:  BorderSide(color:borderwidth == 0 ? Colors.white : Colors.grey),
            ) ,
            prefixIcon: const Icon(
              Icons.search,
              size: 16,
              color: AppColor.kPrimaryColor,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide:  BorderSide(color: borderwidth == 0 ? Colors.white : Colors.grey),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
                borderSide:  BorderSide(color:borderwidth == 0 ? Colors.white : Colors.grey )),
            hintText: hintText,
            hintStyle: AppTextStyle.regular11(context).copyWith(
                color: const Color(0xff7E7E7E),
                fontSize: 14),
          ),
        ),
      ),
    );
  }
}
