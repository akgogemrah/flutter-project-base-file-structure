

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_mobile_app/core/products/main_widgets/main_image_builder.dart';
import 'package:shopping_mobile_app/core/utils/constants/app_assets.dart';
import 'package:shopping_mobile_app/core/utils/constants/app_constants.dart';
import 'package:shopping_mobile_app/core/utils/extensions/context_extension.dart';

import '../../../core/products/main_widgets/main_layout.dart';




class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(

      content: context.isLittlePhone
          ? smallPhoneLayout(context)
          : context.isMiddlePhone
          ? middlePhoneLayout(context)
          : bigPhoneLayout(context),

    );
  }

  Widget bigPhoneLayout(BuildContext context) {
    return _buildBody(context);
  }

  Widget middlePhoneLayout(BuildContext context) {
    return _buildBody(context);
  }

  Widget smallPhoneLayout(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        height30Per(context: context),
        Align(alignment: Alignment.center,child: MainImageBuilder(imagePath: AppAssetsPath.onboard))


      ],
    );
  }





}