import 'package:get/get.dart';
import 'package:peduli_covid/app/modules/main_page/controllers/home_controller.dart';
import 'package:peduli_covid/app/modules/main_page/controllers/news_controller.dart';

import '../controllers/about_controller.dart';
import '../controllers/main_page_controller.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(
      () => MainPageController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<NewsController>(
      () => NewsController(),
    );
    Get.lazyPut<AboutController>(
      () => AboutController(),
    );
  }
}
