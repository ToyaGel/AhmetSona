import 'package:AhmetSona/utils/utils.dart';
import 'package:AhmetSona/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DialogTextButton extends StatelessWidget {
  const DialogTextButton({
    Key? key,
    required this.copiedText,
    required this.text,
  }) : super(key: key);

  final String copiedText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: primaryColor,
            content: TextWidget(
              delayStart: 0,
              text: 'copied'.tr,
              fontSize: Dimensions.textSize18,
              fontFamily: 'PoiretOne',
            ),
            duration: const Duration(seconds: 1),
          ),
        );
        await Clipboard.setData(
          ClipboardData(text: copiedText),
        );
      },
      child: TextWidget(
        delayStart: 0,
        text: text.tr,
        fontSize: Dimensions.textSize18,
        fontFamily: 'PoiretOne',
      ),
    );
  }
}
