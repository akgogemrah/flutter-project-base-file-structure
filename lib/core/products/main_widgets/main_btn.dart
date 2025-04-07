import 'package:flutter/material.dart';
import 'package:shopping_mobile_app/core/utils/extensions/context_extension.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_text_style.dart';

class MainBtn extends StatelessWidget {
  final Color? color;
  final String? text;
  final VoidCallback? onPressed;
  final double? horizontalPadding;  // Yatay padding için parametre
  final double? leftPadding;        // Sol padding için parametre
  final double? rightPadding;       // Sağ padding için parametre
  final double? verticalPadding;    // Dikey padding için parametre

  const MainBtn({
    super.key,
    this.color,
    this.text,
    this.onPressed,
    this.horizontalPadding,
    this.leftPadding,
    this.rightPadding,
    this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {}, // Default boş callback
      child: Padding(
        padding: EdgeInsets.only(
          left: leftPadding ?? horizontalPadding ?? 0,
          right: rightPadding ?? horizontalPadding ?? 0,
          top: verticalPadding ?? 0,
          bottom: verticalPadding ?? 0,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color ?? AppColors.mainColor,
          ),
          child: Padding(
            padding: EdgeInsets.all(context.screenWidth * 0.040),
            child: Text(
              text ?? "Kayıt Ol",
              textAlign: TextAlign.center,
              style: AppTextStyle.mainBtnTxtStyle(context),
            ),
          ),
        ),
      ),
    );
  }
}