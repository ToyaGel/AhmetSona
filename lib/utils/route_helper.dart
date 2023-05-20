import 'package:AhmetSona/pages/home/home_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => HomePage(
        guests: '',
      ),
    ),
  ];
}
