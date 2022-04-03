import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peduli_covid/app/modules/main_page/views/about_view.dart';
import 'package:peduli_covid/app/modules/main_page/views/home_view.dart';
import 'package:peduli_covid/app/modules/main_page/views/news_view.dart';
import 'package:peduli_covid/utils/colors.dart';

import '../controllers/main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  final List pages = [
    HomeView(),
    NewsView(),
    AboutView(),
  ];

  MainPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[controller.page_idx.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.page_idx.value,
          onTap: (idx) {
            controller.move_page(idx);
          },
          selectedItemColor: AppColors.mainColor60,
          unselectedItemColor: Colors.grey.shade400.withOpacity(0.7),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper_rounded), label: 'Berita'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          ],
        ),
      ),
    );
  }
}
