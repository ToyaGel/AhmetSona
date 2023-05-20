import 'package:AhmetSona/utils/utils.dart';
import 'package:AhmetSona/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.delayStart,
      required this.fontFamily});

  final String text;
  final double fontSize;
  final int delayStart;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return delayStart != 0
        ? ShowUpAnimationWidget(
            delayStart: delayStart,
            child: Text(
              text.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: fontSize,
                fontWeight: FontWeight.w900,
                color: textColor,
              ),
            ),
          )
        : Text(
            text.tr,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'PoiretOne',
              fontSize: fontSize,
              fontWeight: FontWeight.w900,
              color: textColor,
            ),
          );
  }
}
