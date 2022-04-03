import 'package:get/get.dart';

class MainPageController extends GetxController {
  final page_idx = 0.obs;

  void move_page(int idx) {
    page_idx.value = idx;
  }
}
