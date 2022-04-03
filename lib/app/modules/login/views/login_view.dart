import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peduli_covid/app/routes/app_pages.dart';
import 'package:peduli_covid/utils/colors.dart';
import 'package:peduli_covid/widgets/big_text.dart';
import 'package:peduli_covid/widgets/small_text.dart';

import '../../../../widgets/ui_icons_icons.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          UiIcons.peduli_covid,
                          color: AppColors.mainColor60,
                          size: 150,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextField(
                          controller: controller.emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(color: AppColors.mainColor60),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: AppColors.mainColor60,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: AppColors.mainColor60,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Obx(
                          () => TextField(
                            controller: controller.passwordController,
                            obscureText: controller.obsecureText.value,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.obsecureText.toggle();
                                },
                                icon: Icon(
                                  controller.obsecureText.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: AppColors.mainColor60,
                                ),
                              ),
                              labelText: 'Password',
                              labelStyle:
                                  TextStyle(color: AppColors.mainColor60),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: AppColors.mainColor60,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: AppColors.mainColor60,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: SmallText(
                              text: 'Lupa Password?',
                              color: AppColors.mainColor60,
                              underline: true,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            try {
                              await controller.firebaseAuth
                                  .signInWithEmailAndPassword(
                                      email: controller.emailController.text,
                                      password:
                                          controller.passwordController.text)
                                  .then((value) =>
                                      Get.offAndToNamed(Routes.MAIN_PAGE));
                            } on FirebaseAuthException catch (e) {
                              SnackBar snackBar = SnackBar(
                                content: Text(e.message!),
                                backgroundColor: Colors.red,
                                duration: const Duration(seconds: 2),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: BigText(
                            text: 'Login',
                            size: 22,
                            color: Colors.white,
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            primary: AppColors.mainColor60,
                            shape: const StadiumBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(text: 'Belum punya akun? '),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: SmallText(
                        text: 'Daftar',
                        color: AppColors.mainColor60,
                        underline: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
