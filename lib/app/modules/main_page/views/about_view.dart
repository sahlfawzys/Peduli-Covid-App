import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peduli_covid/utils/colors.dart';
import 'package:peduli_covid/widgets/big_text.dart';
import 'package:peduli_covid/widgets/small_text.dart';
import 'package:peduli_covid/widgets/ui_icons_icons.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
          height: 250,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: AppColors.mainColor60,
          ),
          child: Column(children: [
            const CircleAvatar(
                backgroundImage: AssetImage('assets/images/SahlFawzyS.jpg'),
                radius: 60),
            const SizedBox(
              height: 10,
            ),
            BigText(
              text: 'Sahl Fawzy Sutopo',
              fontWeight: FontWeight.w700,
              size: 22,
              color: Colors.white,
            ),
            SmallText(
              text: 'sahlfawzys@gmail.com',
              color: Colors.white,
              size: 16,
            )
          ]),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(width: 2, color: AppColors.mainColor60)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: 'Profile :'),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    UiIcons.facebook_square,
                    color: AppColors.mainColor60,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SmallText(text: 'www.facebook.com/sahlfawzy')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    UiIcons.instagram,
                    color: AppColors.mainColor60,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SmallText(text: '@sahlfawzy_')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    UiIcons.linkedin,
                    color: AppColors.mainColor60,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SmallText(text: 'www.linkedin.com/in/sahl-fawzy/')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    UiIcons.github,
                    color: AppColors.mainColor60,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SmallText(text: 'github.com/sahlfawzys')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
