import 'package:AhmetSona/utils/utils.dart';
import 'package:AhmetSona/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.guests}) : super(key: key);

  final String guests;

  final currentLanguage = 'Türkmen dili'.tr.obs;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: ShowUpAnimationWidget(
          delayStart: 1,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('assets/image/Toya.png'),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Obx(
            () => ShowUpAnimationWidget(
              delayStart: 1,
              child: DropdownButtonHideUnderline(
                child: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: DropdownButton(
                    style: TextStyle(
                      fontFamily: 'PoiretOne',
                      fontWeight: FontWeight.w900,
                      fontSize: Dimensions.textSize16,
                      color: textColor,
                    ),
                    dropdownColor: dropdownColor,
                    icon: Icon(
                      Icons.language,
                      size: Dimensions.iconSize20,
                      color: textColor,
                    ),
                    value: currentLanguage.value,
                    alignment: Alignment.center,
                    onChanged: (String? value) {
                      if (value == 'Türkmen dili') {
                        currentLanguage.value = 'Türkmen dili';
                        Get.updateLocale(const Locale('tkm', 'TKM'));
                      } else if (value == 'Русский') {
                        currentLanguage.value = 'Русский';
                        Get.updateLocale(const Locale('ru', 'RU'));
                      } else {
                        currentLanguage.value = 'English';
                        Get.updateLocale(const Locale('en', 'US'));
                      }
                    },
                    items: [
                      'Türkmen dili',
                      'English',
                      'Русский',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: Dimensions.screenWidth,
        height: Dimensions.screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/Front_1_c.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions.sizedBox110,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: TextWidget(
                text: 'mainText',
                fontSize: Dimensions.textSize20,
                delayStart: 1,
                fontFamily: 'PoiretOne',
              ),
            ),
            SizedBox(
              height: Dimensions.sizedBox20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: 'saturday',
                  fontSize: Dimensions.textSize22,
                  delayStart: 1,
                  fontFamily: 'PoiretOne',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VerticalDivider(
                          width: Dimensions.sizedBox20,
                          thickness: 1.0,
                          color: textColor,
                        ),
                        TextWidget(
                          text: '24',
                          fontSize: Dimensions.textSize30,
                          delayStart: 1,
                          fontFamily: 'PoiretOne',
                        ),
                        VerticalDivider(
                          width: Dimensions.sizedBox20,
                          thickness: 1.0,
                          color: textColor,
                        ),
                      ],
                    ),
                  ),
                ),
                TextWidget(
                  text: 'june',
                  fontSize: Dimensions.textSize22,
                  delayStart: 1,
                  fontFamily: 'PoiretOne',
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.sizedBox20,
            ),
            TextWidget(
              text: 'location',
              fontSize: Dimensions.textSize22,
              delayStart: 1,
              fontFamily: 'PoiretOne',
            ),
          ],
        ),
      ),
      floatingActionButton: ShowUpAnimationWidget(
        delayStart: 900,
        child: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => ScaffoldMessenger(
                child: Builder(
                  builder: (context) => Scaffold(
                    backgroundColor: Colors.transparent,
                    body: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => Navigator.of(context).pop(),
                      child: AlertDialog(
                        backgroundColor: primaryColor,
                        title: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/image/ToyaGel Logo.png'),
                                ),
                              ),
                              height: Dimensions.sizedBox150,
                              width: Dimensions.sizedBox150,
                            ),
                            SizedBox(
                              height: Dimensions.sizedBox10,
                            ),
                            TextWidget(
                              delayStart: 0,
                              text: 'contact'.tr,
                              fontSize: Dimensions.textSize18,
                              fontFamily: 'PoiretOne',
                            ),
                          ],
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const DialogTextButton(
                              text: 'email',
                              copiedText: 'toychakylyklary@gmail.com',
                            ),
                            SizedBox(
                              height: Dimensions.sizedBox10,
                            ),
                            const DialogTextButton(
                              text: 'tel',
                              copiedText: '+99363581010',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          alignment: Alignment.centerLeft,
          color: textColor,
          icon: Icon(
            Icons.info_outline,
            size: Dimensions.iconSize30,
          ),
        ),
      ),
    );
  }
}
