import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/ThemeController.dart';

class AllColors {
  static Color getPrimaryColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFF191237)
        : const Color(0xFF191237);
  }

  static Color getGreyColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFF6f7275)
        : const Color(0xFF000000).withOpacity(0.5);
  }

  static Color getBackgroundColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFF000000)
        : const Color(0xFFFFFFFF);
  }

  static Color getSecondBgColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFF25282B)
        : const Color(0xFFE4E7EB);
  }

  static Color getHintColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFF98a1ab)
        : const Color(0xFF52575C);
  }

  static Color getTextColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFFFFFFFF)
        : const Color(0xFF000000);
  }

  static Color getDarkColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFF4d5054)
        : const Color(0xFF25282B);
  }

  static Color getWhiteColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFFFFFFFF)
        : const Color(0xFFFFFFFF);
  }

  static Color getCardColor(BuildContext context) {
    return Get.find<ThemeController>().darkTheme
        ? const Color(0xFF000000)
        : const Color(0xffEEEEEE);
  }

  static const Color buttonColor = Color(0xFF0077DD);
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color colorBackground = Color(0xFFF9F9F9);
  static const Color colorBlueBorder = Color(0xFF6993FF);
  static const Color colorBorder = Color(0xFFD0D5DD);
  static const Color colorText = Color(0xFF101828);
  static const Color colorSubtitleText = Color(0xFF98A2B3);
  static const Color colorCheckboxBorder = Color(0xFF475467);



  static const Map<int, Color> colorMap = {
    50: Color(0x10192D6B),
    100: Color(0x20192D6B),
    200: Color(0x30192D6B),
    300: Color(0x40192D6B),
    400: Color(0x50192D6B),
    500: Color(0x60192D6B),
    600: Color(0x70192D6B),
    700: Color(0x80192D6B),
    800: Color(0x90192D6B),
    900: Color(0xff192D6B),
  };


}

// static const Color buttonColor = Color(0xFF0077DD);
// static const Color colorBackground = Color(0xFFF9F9F9);
// static const Color colorBlueBorder = Color(0xFF6993FF);
// static const Color colorBorder = Color(0xFFD0D5DD);
// static const Color colorText = Color(0xFF101828);