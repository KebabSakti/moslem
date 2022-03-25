import 'package:get/get.dart';
import 'package:moslem/presentation/page/intro/controller/intro_page_controller.dart';
import 'package:moslem/presentation/page/intro/intro_page.dart';

class AppRoute {
  static final routes = [
    GetPage(
      name: '/',
      page: () => IntroPage(),
      binding: BindingsBuilder.put(() => IntroPageController()),
    ),
  ];
}
