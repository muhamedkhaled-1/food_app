import 'dart:ui';

import 'package:food_app/utils/size_config.dart';

import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle styleRegular16 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleExtraBold24 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontWeight: FontWeight.w800,
  );

  static TextStyle styleBold14 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleRegular16Muted = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w400,
    color: const Color(0xff646982), // MutedGray
  );

  static TextStyle styleBold30 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 30),
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleRegular13Sen = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 13),
    fontWeight: FontWeight.w400,
    fontFamily: 'Sen',
  );

  static TextStyle styleRegular14Subtle = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontWeight: FontWeight.w400,
    color: const Color(0xffA0A5BA), // SubtleBlueGray
  );

  static TextStyle styleRegular20 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleRegular17 = TextStyle(
    fontSize: getResponsiveFontSize(fontSize: 17),
    fontWeight: FontWeight.w400,
  );
}

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else {
    return width / 1920;
  }
}