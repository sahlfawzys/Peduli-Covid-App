import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peduli_covid/utils/colors.dart';
import 'package:peduli_covid/widgets/big_text.dart';
import 'package:peduli_covid/widgets/box_container.dart';
import 'package:peduli_covid/widgets/icon_and_text.dart';
import 'package:peduli_covid/widgets/small_text.dart';
import 'package:peduli_covid/widgets/ui_icons_icons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: controller.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return _HomeViewWidget();
          }
          return FutureBuilder(
            builder: (context, snapshot) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }

  Widget _HomeViewWidget() {
    return SafeArea(
      child: Container(
        color: AppColors.mainColor60,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Icon(
                    UiIcons.peduli_covid,
                    color: Colors.white,
                    size: 75,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                        text: 'Hi, WELCOME BACK',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        size: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: BigText(
                            text: 'Bojongsoang Buahbatu',
                            color: Colors.grey.shade600,
                            size: 15,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.greenCon,
                    ),
                    child: Center(
                      child: BigText(
                        text: 'Zona Aman',
                        color: Colors.white,
                        size: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconAndTextWidget(
                          icon: UiIcons.vaccine, text: 'Daftar Vaksin'),
                      IconAndTextWidget(
                          icon: UiIcons.document, text: 'Sertifikat Vaksin'),
                      IconAndTextWidget(
                          icon: UiIcons.covid, text: 'COVID-19 test'),
                      IconAndTextWidget(
                          icon: UiIcons.faskes, text: 'Daftar Faskes'),
                    ],
                  ),
                  Divider(
                      thickness: 2, height: 30, color: AppColors.mainColor60),
                  BigText(
                    text: 'JUMLAH KASUS COVID-19 DI JAWA BARAT',
                    color: AppColors.mainColor30,
                    size: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  SmallText(
                    text:
                        'Last Update : ${controller.covid.data!.metadata!.lastUpdate}',
                    size: 11,
                    color: AppColors.mainColor30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          BoxContainer(
                            title: 'TERKONFIRMASI',
                            total_case: controller.covid.data!.content!.positif
                                .toString(),
                            color: const Color.fromARGB(255, 41, 141, 223),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          BoxContainer(
                            title: 'Sembuh',
                            total_case: controller.covid.data!.content!.sembuh
                                .toString(),
                            color: const Color.fromARGB(255, 51, 245, 34),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          BoxContainer(
                            title: 'KASUS AKTIF',
                            total_case: (controller
                                        .covid.data!.content!.odpProses! +
                                    controller.covid.data!.content!.pdpProses!)
                                .toString(),
                            color: const Color.fromARGB(255, 252, 229, 23),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          BoxContainer(
                            title: 'MENINGGAL ',
                            total_case: controller
                                .covid.data!.content!.meninggal
                                .toString(),
                            color: const Color.fromARGB(255, 221, 16, 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
