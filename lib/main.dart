import 'package:AhmetSona/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmet & Sona',
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
      locale: const Locale('tkm', 'TKM'),
      fallbackLocale: const Locale('en', 'US'),
      translations: Localization(),
      theme: themeData,
    );
  }
}
