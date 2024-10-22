import 'package:ahtarandakhtar/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTextStyle {
  // Poppins Medium 14
  static TextStyle medium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500, // Medium
      fontFamily: 'Poppins',
    );
  }

  // Poppins Regular 11
  static TextStyle regular11(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeight.normal, // Regular
      fontFamily: 'Poppins',
    );
  }

  // Poppins Medium 10
  static TextStyle medium10(BuildContext context) {
    return TextStyle(
      color: Colors.grey,
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeight.w500, // Medium
      fontFamily: 'Poppins',
    );
  }

  // Poppins Bold 24
  static TextStyle bold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w700, // Bold
      fontFamily: 'Poppins',
    );
  }

  // Poppins Regular 11, short version
  static TextStyle regular11Short(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeight.normal, // Regular
      fontFamily: 'Poppins',
    );
  }

  // Poppins Medium 16
  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500, // Medium
      fontFamily: 'Poppins',
    );
  }

  // Poppins Regular 12.8
  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      color: Colors.grey,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.normal, // Regular
      fontFamily: 'Poppins',
    );
  }

  // Poppins Medium 11.7
  static TextStyle medium11(BuildContext context) {
    return TextStyle(
      color: Colors.grey,
      fontSize: getResponsiveFontSize(context, fontSize: 11.7),
      fontWeight: FontWeight.w400, // Medium
      fontFamily: 'Poppins',
    );
  }

  // Poppins SemiBold 14
  static TextStyle semiBold14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600, // SemiBold
      fontFamily: 'Poppins',
    );
  }

  // Merienda SemiBold 16
  static TextStyle semiBoldMerienda16(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600, // SemiBold
      fontFamily: 'Merienda',
    );
  }

  // Poppins SemiBold 18
  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600, // SemiBold
      fontFamily: 'Poppins',
    );
  }

  // Poppins SemiBold 16
  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600, // SemiBold
      fontFamily: 'Poppins',
    );
  }
}
  double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 1;
  double upperLimit = fontSize * 1.3;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }

}
  