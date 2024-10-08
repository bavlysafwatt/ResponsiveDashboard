import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(BuildContext context,
    {required int baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * baseFontSize;
  return responsiveFontSize.clamp(baseFontSize * 0.8, baseFontSize * 1.2);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 1050;
  } else {
    return width / 1920;
  }
}
