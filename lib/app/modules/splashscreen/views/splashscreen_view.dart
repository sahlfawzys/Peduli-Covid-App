import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peduli_covid/utils/colors.dart';
import 'package:peduli_covid/widgets/big_text.dart';
import 'package:peduli_covid/widgets/ui_icons_icons.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.mainColor60,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Icon(
                            UiIcons.peduli_covid,
                            color: AppColors.mainColor60,
                          ),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              BigText(
                text: 'PEDULI COVID',
                color: Colors.white,
                size: 22,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
