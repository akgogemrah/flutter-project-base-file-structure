
import 'package:flutter/cupertino.dart';
import 'package:shopping_mobile_app/core/utils/constants/app_assets.dart';

import 'main_image_builder.dart';

class MainBackBtn extends StatefulWidget {
  final VoidCallback? onPressed;
  const MainBackBtn({this.onPressed,super.key});

  @override
  State<MainBackBtn> createState() => _MainBackBtnState();
}

class _MainBackBtnState extends State<MainBackBtn> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:widget.onPressed!=null?widget.onPressed: () {
        if (!_isTapped) {
          _isTapped = true;
          Navigator.pop(context);
          Future.delayed(Duration(milliseconds: 300), () {
            _isTapped = false; // Tıklama süresini sıfırla
          });
        }
      },
      child: MainImageBuilder(
        imagePath: AppAssetsPath.arrowBackIcon,
        isSvg: true,
      ),
    );
  }
}