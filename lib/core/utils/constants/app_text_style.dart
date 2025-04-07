
import 'package:flutter/material.dart';
import 'package:shopping_mobile_app/core/utils/extensions/context_extension.dart';

import 'app_colors.dart';
import 'app_strings.dart';

class AppTextStyle {
  AppTextStyle._();

// Main Button
  static TextStyle mainBtnTxtStyle(BuildContext context) {
    return TextStyle(
      color: AppColors.mainColor,
      fontSize: context.height * 0.023,
      fontWeight: FontWeight.w600,
      fontFamily: appFont,
    );
  }












}